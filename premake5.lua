workspace "RayTracing"
	architecture "x64"
    configurations { 
		"Debug",
		"Release"
	}
	
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "RayTracing"
	location "RayTracing"
    kind "ConsoleApp"
    language "C++"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		"%{prj.name}/src/**.h",
		"%{prj.name}/src/**.cpp"
	}
	
	filter "configurations:Debug"
		defines "RT_DEBUG"
		symbols "On"
		
	filter "configurations:Release"
		defines "RT_RELEASE"
		optimize "On"
		
	filter {"system:windows", "configurations:Release"}
		buildoptions "/MT"