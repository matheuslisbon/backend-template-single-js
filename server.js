import express from 'express'
const app = express()
import cors from 'cors'
app.use(express.json())
app.use(express.urlencoded({ extended: true }))
app.use(cors('*'))
const port = 3000

app.get('/', (req, res) => {
  return res.status(200).send('hello world')
})

app.listen(port, () => {
  console.log(`started server on port ${port}`)
})