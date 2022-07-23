import InfoContainer from "../../components/InfoContainer";
import Header from "./components/Header";
import { View, StyleSheet, ScrollView } from "react-native";
import Texto from "../../components/Texto";
import { dimensao } from "../../utils/dimensoesDoDipositivo";
import CardGasto from "../../components/CardGasto";
import { lancamentosTeste } from "../../application/mocks/lancamentosTest";
import Monetario from "../../components/Monetario";
import { RootStackScreenProps } from "../../application/types/RootStack";

export default function Home({navigation, route}: RootStackScreenProps<'Home'>) {
  const {usuario, id} = route.params;
  return (
    <ScrollView>
      <View style={{ alignItems: "center" }}>
        <Header {...usuario} />
        <InfoContainer style={estilos.container}>
          <View>
            <Texto style={estilos.texto16}>Total das faturas:</Texto>
            <Monetario style={[estilos.texto22, { marginBottom: 10 }]}>{usuario.totalDasFaturas!}</Monetario>
          </View>
          <View>
            <Texto style={estilos.texto16}>Seu limite de crédito mensal:</Texto>
            <Monetario style={[estilos.texto22, { marginBottom: 10 }]}>
              {usuario.limiteMaximo}
            </Monetario>
          </View>
          <View>
            <Texto style={estilos.texto16}>Seu limite de crédito hoje:</Texto>
            <Monetario style={estilos.texto22}>{usuario.limiteDisponivel}</Monetario>
          </View>
        </InfoContainer>
        <View style={estilos.parcelamentosContainer}>
          <Texto tipo="negrito" style={estilos.texto22}>
            Parcelamentos vigentes
          </Texto>
        {lancamentosTeste.map(lancamento => {
          if(lancamento.parcelas != 'fixa' && lancamento.parcelas != 'unica'){
            return <CardGasto {...lancamento} key={lancamento.codigo}/>
          }else return;
        })}
        </View>
      </View>
    </ScrollView>
  );
}

const estilos = StyleSheet.create({
  container: {
    marginTop: 74,
    marginBottom: 48,
  },
  texto16: {
    color: "#fff",
    fontSize: 16,
  },
  texto22: {
    color: "#fff",
    fontSize: 22,
  },
  parcelamentosContainer: {
    width: dimensao.largura,
    backgroundColor: "#0B4B54",
    borderTopRightRadius: 30,
    borderTopLeftRadius: 30,
    alignItems: "center",
    padding: 16,
  },
});
