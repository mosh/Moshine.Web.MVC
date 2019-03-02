<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<Project DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003" ToolsVersion="4.0">
  <PropertyGroup>
    <ProductVersion>3.5</ProductVersion>
    <ProjectTypeGuids>{349c5851-65df-11da-9384-00065b846f21};{656346D9-4656-40DA-A068-22D5425D4639}</ProjectTypeGuids>
    <OutputType>Library</OutputType>
    <RootNamespace>jQuery.UI.Grid</RootNamespace>
    <AssemblyName>jQuery.UI.Grid</AssemblyName>
    <Configuration Condition="'$(Configuration)' == ''">Release</Configuration>
    <TargetFrameworkVersion>v4.5.2</TargetFrameworkVersion>
    <Name>jQuery.UI.Grid</Name>
    <ProjectGuid>{4b6b331d-6902-4ab2-a002-e8f824d7c275}</ProjectGuid>
    <Company>""</Company>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Debug' ">
    <DefineConstants>DEBUG;TRACE;</DefineConstants>
    <OutputPath>./bin</OutputPath>
    <GeneratePDB>True</GeneratePDB>
    <GenerateMDB>True</GenerateMDB>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Release' ">
    <OutputPath>./bin</OutputPath>
    <EnableAsserts>False</EnableAsserts>
  </PropertyGroup>
  <ItemGroup>
    <Reference Include="Microsoft.Web.Infrastructure">
      <HintPath>..\packages\Microsoft.Web.Infrastructure.1.0.0.0\lib\net40\Microsoft.Web.Infrastructure.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="mscorlib">
      <HintPath>mscorlib.dll</HintPath>
    </Reference>
    <Reference Include="System" />
    <Reference Include="System.Configuration" />
    <Reference Include="System.Data" />
    <Reference Include="System.Drawing" />
    <Reference Include="System.EnterpriseServices" />
    <Reference Include="System.Web" />
    <Reference Include="System.Web.Helpers">
      <HintPath>..\packages\Microsoft.AspNet.WebPages.3.2.3\lib\net45\System.Web.Helpers.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="System.Web.Mobile" />
    <Reference Include="System.Web.Mvc">
      <HintPath>..\packages\Microsoft.AspNet.Mvc.5.2.3\lib\net45\System.Web.Mvc.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="System.Web.Razor">
      <HintPath>..\packages\Microsoft.AspNet.Razor.3.2.3\lib\net45\System.Web.Razor.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="System.Web.Routing">
      <HintPath>C:\Program Files\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Web.Routing.dll</HintPath>
    </Reference>
    <Reference Include="System.Web.Services" />
    <Reference Include="System.Web.WebPages">
      <HintPath>..\packages\Microsoft.AspNet.WebPages.3.2.3\lib\net45\System.Web.WebPages.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="System.Web.WebPages.Deployment">
      <HintPath>..\packages\Microsoft.AspNet.WebPages.3.2.3\lib\net45\System.Web.WebPages.Deployment.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="System.Web.WebPages.Razor">
      <HintPath>..\packages\Microsoft.AspNet.WebPages.3.2.3\lib\net45\System.Web.WebPages.Razor.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="System.Xml" />
    <Reference Include="System.Core">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
    <Reference Include="System.Xml.Linq">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
    <Reference Include="System.Data.DataSetExtensions">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
  </ItemGroup>
  <ItemGroup>
    <Content Include="Content\grid-datamodel.css">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\site.css">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\themes\base\images\ui-bg_flat_0_aaaaaa_40x100.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\themes\base\images\ui-bg_flat_75_ffffff_40x100.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\themes\base\images\ui-bg_glass_55_fbf9ee_1x400.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\themes\base\images\ui-bg_glass_65_ffffff_1x400.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\themes\base\images\ui-bg_glass_75_dadada_1x400.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\themes\base\images\ui-bg_glass_75_e6e6e6_1x400.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\themes\base\images\ui-bg_glass_95_fef1ec_1x400.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\themes\base\images\ui-bg_highlight-soft_75_cccccc_1x100.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\themes\base\images\ui-icons_222222_256x240.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\themes\base\images\ui-icons_2e83ff_256x240.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\themes\base\images\ui-icons_454545_256x240.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\themes\base\images\ui-icons_888888_256x240.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\themes\base\images\ui-icons_cd0a0a_256x240.png">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Content\themes\base\jquery-ui.css">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Default.aspx" />
    <Compile Include="Controllers\HomeController.pas" />
    <Compile Include="Default.aspx.pas">
      <DependentUpon>Default.aspx</DependentUpon>
      <SubType>ASPXCodeBehind</SubType>
      <DesignableClassName>jQuery.UI.Grid._Default</DesignableClassName>
    </Compile>
    <Compile Include="Default.aspx.designer.pas">
      <DependentUpon>Default.aspx</DependentUpon>
      <SubType>ASPXCodeBehind</SubType>
      <DesignableClassName>jQuery.UI.Grid._Default</DesignableClassName>
    </Compile>
    <Content Include="Global.asax" />
    <Compile Include="Global.asax.pas">
      <DependentUpon>Global.asax</DependentUpon>
    </Compile>
    <Content Include="packages.config">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\datamodel\dataitem.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\datamodel\datasource.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\datamodel\datastore.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\datamodel\extractor-datasource.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\datamodel\grid.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\jquery-1.4.4.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\jquery.tmpl.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\ui\jquery.ui.core.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Scripts\ui\jquery.ui.widget.js">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Views\Home\Index.aspx">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Views\Web.config">
      <SubType>Content</SubType>
    </Content>
    <Content Include="Web.config" />
    <Compile Include="Models\IndexViewModel.pas" />
    <Compile Include="Models\Product.pas" />
    <Compile Include="Properties\AssemblyInfo.pas" />
  </ItemGroup>
  <ItemGroup>
    <Folder Include="Content\" />
    <Folder Include="Content\themes\" />
    <Folder Include="Content\themes\base\" />
    <Folder Include="Content\themes\base\images\" />
    <Folder Include="Controllers" />
    <Folder Include="Models" />
    <Folder Include="Scripts\" />
    <Folder Include="Scripts\datamodel\" />
    <Folder Include="Scripts\ui\" />
    <Folder Include="Views" />
    <Folder Include="Properties\" />
    <Folder Include="Views\Home" />
  </ItemGroup>
  <ItemGroup>
    <ProjectReference Include="..\Moshine.Web.MVC\Moshine.Web.MVC.oxygene">
      <Name>Moshine.Web.MVC</Name>
      <Project>{e0318617-b791-4a03-9e9d-ac71b0cf25e1}</Project>
      <Private>True</Private>
      <HintPath>..\Moshine.Web.MVC\bin\Release\Moshine.Web.MVC.dll</HintPath>
    </ProjectReference>
  </ItemGroup>
  <ProjectExtensions>
    <VisualStudio>
      <FlavorProperties Guid="{349c5851-65df-11da-9384-00065b846f21}">
        <WebProjectProperties>
          <UseIIS>False</UseIIS>
          <AutoAssignPort>True</AutoAssignPort>
          <DevelopmentServerPort>50444</DevelopmentServerPort>
          <DevelopmentServerVPath>/</DevelopmentServerVPath>
          <IISUrl></IISUrl>
          <NTLMAuthentication>False</NTLMAuthentication>
          <UseCustomServer>False</UseCustomServer>
          <CustomServerUrl></CustomServerUrl>
          <SaveServerSettingsInUserFile>False</SaveServerSettingsInUserFile>
        </WebProjectProperties>
      </FlavorProperties>
      <FlavorProperties Guid="{349c5851-65df-11da-9384-00065b846f21}" User="">
        <WebProjectProperties>
          <StartPageUrl>Home/Index</StartPageUrl>
          <StartAction>SpecificPage</StartAction>
          <AspNetDebugging>True</AspNetDebugging>
          <SilverlightDebugging>False</SilverlightDebugging>
          <NativeDebugging>False</NativeDebugging>
          <SQLDebugging>False</SQLDebugging>
          <ExternalProgram></ExternalProgram>
          <StartExternalURL></StartExternalURL>
          <StartCmdLineArguments></StartCmdLineArguments>
          <StartWorkingDirectory></StartWorkingDirectory>
          <EnableENC>False</EnableENC>
          <AlwaysStartWebServerOnDebug>True</AlwaysStartWebServerOnDebug>
        </WebProjectProperties>
      </FlavorProperties>
    </VisualStudio>
  </ProjectExtensions>
  <Import Project="$(MSBuildExtensionsPath)\RemObjects Software\Elements\RemObjects.Elements.Echoes.targets" />
  <Import Project="$(MSBuildExtensionsPath)\Microsoft\VisualStudio\v14.0\WebApplications\Microsoft.WebApplication.targets" />
  <PropertyGroup>
    <PreBuildEvent />
  </PropertyGroup>
</Project>