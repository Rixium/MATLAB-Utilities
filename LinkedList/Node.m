classdef Node < handle
    properties
        Value
        % Holds a reference to the last node of the list.
        Last
        % Holds a reference to the next node of the list.
        Next
    end
    methods
        % Constructor to initial a node with a value.
        function node = Node(value) 
            node.Value = value;
        end
    end
end

