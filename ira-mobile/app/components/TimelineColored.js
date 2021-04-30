import React from "react";
import { StyleSheet, View } from "react-native";

import colors from "../config/colors";
import AppText from "./AppText";
import ListItemSeperator from "./ListItemSeperator";

function TimelineColored({ title, subtitle, footer }) {
  return (
    <View style={styles.container}>
      <View style={styles.strip} />
      <View style={styles.contentContainer}>
        <AppText style={styles.title}>{title}</AppText>
        <ListItemSeperator />
        <AppText style={styles.subTitle}>{subtitle}</AppText>
        {footer && (
          <View style={styles.footer}>
            <AppText style={styles.footerText}>{footer}</AppText>
          </View>
        )}
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    borderLeftWidth: 1,
    borderLeftColor: colors.secondary,
    flexDirection: "row",
    paddingVertical: 10,
    marginHorizontal: 10,
  },
  contentContainer: {
    backgroundColor: colors.white,
    borderRadius: 10,
    elevation: 1,
    flex: 1,
    padding: 15,
  },
  footer: {
    marginTop: 5,
  },
  footerText: {
    color: colors.medium,
    fontSize: 12,
    marginTop: 5,
    textAlign: "right",
  },
  strip: {
    backgroundColor: colors.secondary,
    position: "relative",
    left: -3,
    width: 5,
    borderRadius: 2.5,
    marginRight: 20,
    height: 60,
    alignSelf: "center",
  },
  subTitle: {
    marginTop: 5,
    fontSize: 16,
    color: colors.dark,
  },
  title: {
    color: colors.secondary,
    paddingBottom: 5,
  },
});

export default TimelineColored;
