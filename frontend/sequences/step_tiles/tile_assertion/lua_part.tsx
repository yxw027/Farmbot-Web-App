import { editStep } from "../../../api/crud";
import { Assertion } from "farmbot/dist/corpus";
import React from "react";
import { AssertionStepProps } from "./support";

export function LuaPart(props: AssertionStepProps) {
  const luaBlur = (e: React.ChangeEvent<HTMLTextAreaElement>) => {
    props.dispatch(editStep({
      step: props.currentStep,
      index: props.index,
      sequence: props.currentSequence,
      executor(c: Assertion) {
        c.args.lua = e.currentTarget.value;
      }
    }));
  };
  const { lua } = props.currentStep.args;
  return <div>
    <textarea
      value={lua}
      onBlur={luaBlur}
      style={{
        width: "100%",
        height: `${((lua.split("\n").length) + 1) * 1.25}em`
      }} />
  </div>;
}
