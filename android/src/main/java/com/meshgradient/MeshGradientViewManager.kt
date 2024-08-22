package com.rnmeshgradient

import com.facebook.react.bridge.ReadableArray
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.annotations.ReactProp

class RNMeshGradientManager : SimpleViewManager<RNMeshGradient>() {
    override fun getName(): String {
        return REACT_CLASS
    }

    override fun createViewInstance(reactContext: ThemedReactContext): RNMeshGradient {
        return RNMeshGradient(reactContext)
    }

    @ReactProp(name = "speed")
    fun setSpeed(view: RNMeshGradient, speed: Float) {
        view.setSpeed(speed)
    }

    @ReactProp(name = "brightness")
    fun setBrightness(view: RNMeshGradient, brightness: Float) {
        view.setBrightness(brightness)
    }

    @ReactProp(name = "frequency")
    fun setFrequency(view: RNMeshGradient, frequency: Float) {
        view.setFrequency(frequency)
    }

    @ReactProp(name = "amplitude")
    fun setAmplitude(view: RNMeshGradient, amplitude: Float) {
        view.setAmplitude(amplitude)
    }

    @ReactProp(name = "contrast")
    fun setContrast(view: RNMeshGradient, contrast: Float) {
        view.setContrast(contrast)
    }

    @ReactProp(name = "colors")
    fun setColors(view: RNMeshGradient, data: ReadableArray) {
        val colors = mutableListOf<Int>()
        for (i in 0 until data.size()) {
            colors.add(data.getInt(i))
        }
        view.setColors(colors.toIntArray())
    }

    companion object {
        private const val REACT_CLASS = "RNMeshGradient"
    }
}
