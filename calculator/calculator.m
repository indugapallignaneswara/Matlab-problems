classdef comp1 < matlab.ui.componentcontainer.ComponentContainer

    % Properties that correspond to underlying components
    properties (Access = private, Transient, NonCopyable)
        DivButton               matlab.ui.control.Button
        MulButton               matlab.ui.control.Button
        SubButton               matlab.ui.control.Button
        AddButton               matlab.ui.control.Button
        ResultEditField         matlab.ui.control.NumericEditField
        ResultEditFieldLabel    matlab.ui.control.Label
        Operand2EditField       matlab.ui.control.NumericEditField
        Operand2EditFieldLabel  matlab.ui.control.Label
        operand1EditField       matlab.ui.control.NumericEditField
        operand1EditFieldLabel  matlab.ui.control.Label
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: AddButton
        function AddButtonPushed(comp, event)
           value = comp.operand1EditField.Value + comp.Operand2EditField.Value;
           comp.ResultEditField.Value = value;
        end

        % Button pushed function: SubButton
        function SubButtonPushed(comp, event)
            value = comp.operand1EditField.Value - comp.Operand2EditField.Value;
           comp.ResultEditField.Value = value;
        end

        % Button pushed function: MulButton
        function MulButtonPushed(comp, event)
            value = comp.operand1EditField.Value * comp.Operand2EditField.Value;
           comp.ResultEditField.Value = value;
        end

        % Button pushed function: DivButton
        function DivButtonPushed(comp, event)
            value = comp.operand1EditField.Value / comp.Operand2EditField.Value;
           comp.ResultEditField.Value = value;
        end
    end

    methods (Access = protected)
        
        % Code that executes when the value of a public property is changed
        function update(comp)
            % Use this function to update the underlying components
            
        end

        % Create the underlying components
        function setup(comp)

            comp.Position = [1 1 349 459];
            comp.BackgroundColor = [0.94 0.94 0.94];

            % Create operand1EditFieldLabel
            comp.operand1EditFieldLabel = uilabel(comp);
            comp.operand1EditFieldLabel.HorizontalAlignment = 'right';
            comp.operand1EditFieldLabel.Position = [94 402 56 22];
            comp.operand1EditFieldLabel.Text = 'operand1';

            % Create operand1EditField
            comp.operand1EditField = uieditfield(comp, 'numeric');
            comp.operand1EditField.Position = [165 402 100 22];

            % Create Operand2EditFieldLabel
            comp.Operand2EditFieldLabel = uilabel(comp);
            comp.Operand2EditFieldLabel.HorizontalAlignment = 'right';
            comp.Operand2EditFieldLabel.Position = [92 345 58 22];
            comp.Operand2EditFieldLabel.Text = 'Operand2';

            % Create Operand2EditField
            comp.Operand2EditField = uieditfield(comp, 'numeric');
            comp.Operand2EditField.Position = [165 345 100 22];

            % Create ResultEditFieldLabel
            comp.ResultEditFieldLabel = uilabel(comp);
            comp.ResultEditFieldLabel.HorizontalAlignment = 'right';
            comp.ResultEditFieldLabel.Position = [109 292 39 22];
            comp.ResultEditFieldLabel.Text = 'Result';

            % Create ResultEditField
            comp.ResultEditField = uieditfield(comp, 'numeric');
            comp.ResultEditField.Position = [163 292 100 22];

            % Create AddButton
            comp.AddButton = uibutton(comp, 'push');
            comp.AddButton.ButtonPushedFcn = matlab.apps.createCallbackFcn(comp, @AddButtonPushed, true);
            comp.AddButton.Position = [34 232 100 23];
            comp.AddButton.Text = 'Add';

            % Create SubButton
            comp.SubButton = uibutton(comp, 'push');
            comp.SubButton.ButtonPushedFcn = matlab.apps.createCallbackFcn(comp, @SubButtonPushed, true);
            comp.SubButton.Position = [202 232 100 23];
            comp.SubButton.Text = 'Sub';

            % Create MulButton
            comp.MulButton = uibutton(comp, 'push');
            comp.MulButton.ButtonPushedFcn = matlab.apps.createCallbackFcn(comp, @MulButtonPushed, true);
            comp.MulButton.Position = [34 170 100 23];
            comp.MulButton.Text = 'Mul';

            % Create DivButton
            comp.DivButton = uibutton(comp, 'push');
            comp.DivButton.ButtonPushedFcn = matlab.apps.createCallbackFcn(comp, @DivButtonPushed, true);
            comp.DivButton.Position = [202 170 100 23];
            comp.DivButton.Text = 'Div';
        end
    end
end
