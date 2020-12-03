import React from 'react'
import { Link } from 'react-router-dom'
import { Card } from 'react-bootstrap'
import Rating from './Rating'

const Product = ({ product }) => {
  return (
    <Card  style={{borderRadius:"5% 5% 5% 0 ", margin: "5%"}} >
      <Link to={`/product/${product._id}`}>
        <Card.Img src={product.image} variant='top' />
      </Link>

      <Card.Body style={{padding: "1.25rem 0 0 1.25rem"}}>
        <Link to={`/product/${product._id}`}>
          <Card.Title as='div'>
            <strong>{product.name}</strong>
          </Card.Title>
        </Link>

        <Card.Text as='div'>
          <Rating
            value={product.rating}
            text={`${product.numReviews} reviews`}
          />
        </Card.Text>

        <Card.Text as='h3'>${product.price}</Card.Text>
        <Link to={`/product/${product._id}`}>
        <>
        <img
        style={{
          margin:"0",
          padding:"0",
          float:"right"
        }}
        src={require('../plus-sign.png')}
        alt="add item"></img>
        </>
        </Link>
      </Card.Body>
    </Card>
  )
}

export default Product
