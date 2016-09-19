/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import SlotMachine from 'react-native-slot-machine';

ReactNative = require('react-native');


PropTypes = React.PropTypes;

NativeModules = ReactNative.NativeModules;

// RNSlotMachine = NativeModules.RNSlotMachine;

var modules = "RNSlotMachine:"+JSON.stringify(SlotMachine);
import {
  AppRegistry,
  StyleSheet,
  Text,
  TouchableOpacity,
  Image,
  View
} from 'react-native';

class Example extends Component {
   constructor(props) {
    super(props);

    this.camera = null;

    this.state = {
      camera: {
      },
      isRecording: false
    };

    this.start = this.start.bind(this);
  }

 start() {
    if (this.camera) {
      this.camera.start({});
    }
  }
  
  render() {
    return (
      <View style={styles.container}>
        <SlotMachine ref={(cam) => {
            this.camera = cam;
          }}
          style={styles.chart} />
        
        <TouchableOpacity
                style={styles.captureButton}
                onPress={this.start}
            >
              <Image
                  source={require('./assets/ic_photo_camera_36pt.png')}
              />
            </TouchableOpacity>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
  chart: {
    backgroundColor: 'transparent',
    position: 'absolute',
    top: 10,
    left: 16,
    bottom: 4,
    right: 16,
  }
});

AppRegistry.registerComponent('Example', () => Example);
