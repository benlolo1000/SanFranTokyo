import mongoose from 'mongoose'

const connectDB = async () => {
  console.log(process.env.MONGO_HOST)
  console.log(process.env.MONGO_PASS)
  console.log(process.env.MONGO_USER)
  console.log(`mongodb://${process.env.MONGO_HOST}/sanfrantokyo`)
  try {
    const conn = await mongoose.connect(`mongodb://${process.env.MONGO_HOST}/sanfrantokyo`, {
      pass: process.env.MONGO_PASS,
      useFindAndModify: false,
      useNewUrlParser: true,
      useUnifiedTopology: true,
      useCreateIndex: true,
      user: process.env.MONGO_USER
    })

    console.log(`MongoDB Connected: ${conn.connection.host}`.cyan.underline)
  } catch (error) {
    console.error(`Error: ${error.message}`.red.underline.bold)
    process.exit(1)
  }
}

export default connectDB
