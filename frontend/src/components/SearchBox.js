import React, { useState } from 'react'
import { Form, Button } from 'react-bootstrap'

const SearchBox = ({ history }) => {
  const [keyword, setKeyword] = useState('')

  const submitHandler = (e) => {
    e.preventDefault()
    if (keyword.trim()) {
      history.push(`/search/${keyword}`)
    } else {
      history.push('/')
    }
  }

  return (
    <Form style={{flexFlow:"nowrap", paddingRight:"10%"}} onSubmit={submitHandler} inline>
      <Form.Control
      style={{marginLeft:"0 !important"}}
        type='text'
        name='q'
        onChange={(e) => setKeyword(e.target.value)}
        placeholder='Search Products...'
        className='mr-sm-2 ml-sm'
      ></Form.Control>
      <Button 
      type='submit'
      className='p-2'
      >
        Search
      </Button>
    </Form>
  )
}

export default SearchBox
