classdef LinkedList < handle
    properties
        % Holds a reference to the starting node of the list.
        Head
    end
    methods
        % Adds a new node to a linked list.
        function add(list, node)
            % If the head is empty,
            % then we can assign the new node as the head of the list.
            if(isempty(list.Head))
                list.Head = node;
                return;
            end
            % Keep a reference to the last node we checked.
            lastNode = list.Head;
            % If last node has a next.
            while(~isempty(lastNode.Next))
                % Assign the next node to the last node.
                lastNode = lastNode.Next; 
            end
            % If the last node doesn't have a next, 
            % we assign the new node here.
            lastNode.Next = node; 
        end
        
        % Iterates over a linked list, and displays the values of each
        % node.
        function disp(list)
            % Setting initial display to the head of the list.
            current = list.Head;
            while(~isempty(current))
                % If the current isn't empty, then we display its value.
                disp(current.Value);
                current = current.Next;
            end
        end
    end
end

