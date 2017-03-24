var AllCategories = React.createClass({
  render() {
    var incomes = this.props.categories.map((category) => {
      if (category.kind == 'income')
        return ( <tr key={category.id}><td>{category.name}</td></tr> )
    });
    var expenses = this.props.categories.map((category) => {
      if (category.kind == 'expense')
        return ( <tr key={category.id}><td>{category.name}</td></tr> )
    });

    return (
      <div>
        <div className='row'>
          <div className='col s12'>
            <ul className='tabs'>
              <li className='tab col s6'><a href='#incomes'>Incomes</a></li>
              <li className='tab col s6'><a href='#expenses'>Expenses</a></li>
            </ul>
          </div>
        </div>

        <div id='incomes'>
          <table className='highlight'>
            <tbody>
              {incomes}
            </tbody>
          </table>
        </div>
        <div id='expenses'>
          <table className='highlight'>
            <tbody>
              {expenses}
            </tbody>
          </table>
        </div>
      </div>
    )
  }
})
