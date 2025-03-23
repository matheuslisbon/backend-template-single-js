import express from 'express'
const app = express()

const port = 3000

app.get('/', (req, res) => {
  console.log(req)

  return res.status(200).send('hey')
})

app.listen(port, () => {
  console.log(`started server on port ${port}`)
})