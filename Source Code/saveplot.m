function saveplot(fname,hf,method,nofig)
%SAVEPLOT Save a figure in several formats
%   
%   SAVEPLOT is a function for saving figures in different formats.
%
%   Standard: .mat via hgsave, matlabfrag and fixlines
%   SIMP: .fig and .eps with painters
%
%   Created by Hayden Tronnolone
%   Date created: 04/09/2014

% Check for name
if nargin<1
    error('You must supply a file name')
elseif ~ischar(fname)
    error('The file name must be a string')
end

% Default to full method
if nargin<3
    method = 'Simple';
end

if nargin<4
    nofig = 0;
end

% Set handle if not specified
if nargin<2||isempty(hf)
    hf = gcf;
end

% Save figure
if ~nofig
    hgsave(hf,fname)
end

% EPS with painters
if strcmpi(method,'Simple')
    
    print(hf,'-depsc2','-painters','-loose',fname);
    
% EPS with openGL
elseif strcmpi(method,'SimpleOGL')
    
    print(hf,'-depsc2','-opengl','-loose',fname);
    
% PDF
elseif strcmpi(method,'PDF')
    
    print(hf,'-dpdf','-fillpage',fname);
    
% PNG
elseif strcmpi(method,'PNG')
    
    print(hf,'-dpng',fname);
        
% Tikz
elseif strcmpi(method,'Tikz')
    
    %fix_lines([fname '.eps'])
    axoptions={'x tick label style={/pgf/number format/fixed}','y tick label style={/pgf/number format/fixed}'};
    matlab2tikz([fname '.tikz'],'height','\figureheight','width','\figurewidth','extraAxisOptions',axoptions)
    %matlab2tikz([fname '.tikz'],'floatFormat','%.3f','height', '\figureheight', 'width', '\figurewidth','extraAxisOptions',axoptions)
    
    % MATLABfrag (eps with TeX)
elseif strcmpi(method,'MATLABfrag')
    
    matlabfrag(fname)
    
    % Method not recognised
else
    
    warning('Method not recognised. Saving using simple method.') 
    print(hf,'-depsc2','-painters','-loose',fname);
    
end