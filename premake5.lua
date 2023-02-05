project "ImGui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputDir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputDir .. "/%{prj.name}")

    files
    {
        "*.h",
        "*.cpp"
    }

    filter "system:windows"
        cppdialect "C++17"
        systemversion "latest"
        staticruntime "On"

        filter { "system:windows" , "configurations:Release"}
        buildoptions "/MT"