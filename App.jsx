
import React, { Component } from 'react';
class App extends Component {
    render(){//登録できるコンポーネントは一つかな
        // コンポーネント内でのコメントは、{/*内容*/}
        var i = 0;
        var myStyle = {
            fontSize: 100,
            color: '#FF0000'
        }
        return(
            <div>
                <h1 style={myStyle}>Header</h1>
                {/*Multi line comment...*/}
                {/*comment2*/}
            </div>
        );
    }
}

export default App;
