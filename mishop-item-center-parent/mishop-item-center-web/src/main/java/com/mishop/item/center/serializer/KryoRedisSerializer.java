package com.mishop.item.center.serializer;

import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.SerializationException;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.io.Input;
import com.esotericsoftware.kryo.io.Output;

public class KryoRedisSerializer<T> implements RedisSerializer<T> {
	private Kryo kryo = new Kryo();

	@Override
	public byte[] serialize(Object t) throws SerializationException {
		byte[] buffer = new byte[2048];
		Output output = new Output(buffer);
		kryo.writeClassAndObject(output, t);
		return output.toBytes();
	}

	@SuppressWarnings("unchecked")
	@Override
	public T deserialize(byte[] bytes) throws SerializationException {
		Input input = new Input(bytes);

		T readClassAndObject = (T) kryo.readClassAndObject(input);
		return readClassAndObject;
	}

	public void test() {

	}
}