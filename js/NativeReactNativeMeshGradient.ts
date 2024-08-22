import { TurboModule, TurboModuleRegistry } from 'react-native'

interface Spec extends TurboModule {}

export default TurboModuleRegistry.get<Spec>('ReactNativeMeshGradient') as Spec