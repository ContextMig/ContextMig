.class public Lcom/fasterxml/jackson/core/util/VersionUtil;
.super Ljava/lang/Object;
.source "VersionUtil.java"


# static fields
.field private static final V_SEP:Ljava/util/regex/Pattern;


# instance fields
.field private final _v:Lcom/fasterxml/jackson/core/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "[-_./;:]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/util/VersionUtil;->V_SEP:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v1, 0x0

    .line 45
    .local v1, "v":Lcom/fasterxml/jackson/core/Version;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/core/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/core/Version;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    :goto_0
    if-nez v1, :cond_0

    .line 50
    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object v1

    .line 52
    :cond_0
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/VersionUtil;->_v:Lcom/fasterxml/jackson/core/Version;

    .line 53
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERROR: Failed to load Version information from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final _close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 168
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static mavenVersionFor(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/core/Version;
    .locals 8
    .param p0, "cl"    # Ljava/lang/ClassLoader;
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "artifactId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "META-INF/maven/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\\."

    const-string/jumbo v7, "/"

    .line 122
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/pom.properties"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-virtual {p0, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 123
    .local v0, "pomProperties":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 126
    .local v3, "props":Ljava/util/Properties;
    invoke-virtual {v3, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 127
    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "versionStr":Ljava/lang/String;
    const-string/jumbo v5, "artifactId"

    invoke-virtual {v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "pomPropertiesArtifactId":Ljava/lang/String;
    const-string/jumbo v5, "groupId"

    invoke-virtual {v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "pomPropertiesGroupId":Ljava/lang/String;
    invoke-static {v4, v2, v1}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/core/Version;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 134
    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/VersionUtil;->_close(Ljava/io/Closeable;)V

    .line 137
    .end local v1    # "pomPropertiesArtifactId":Ljava/lang/String;
    .end local v2    # "pomPropertiesGroupId":Ljava/lang/String;
    .end local v3    # "props":Ljava/util/Properties;
    .end local v4    # "versionStr":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 131
    :catch_0
    move-exception v5

    .line 134
    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/VersionUtil;->_close(Ljava/io/Closeable;)V

    .line 137
    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object v5

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v5

    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/VersionUtil;->_close(Ljava/io/Closeable;)V

    throw v5
.end method

.method public static packageVersionFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/core/Version;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/core/Version;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 89
    .local v1, "v":Lcom/fasterxml/jackson/core/Version;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".PackageVersion"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "versionInfoClassName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 93
    .local v2, "vClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/core/Versioned;

    invoke-interface {v4}, Lcom/fasterxml/jackson/core/Versioned;->version()Lcom/fasterxml/jackson/core/Version;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 100
    .end local v2    # "vClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "versionInfoClassName":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object v1

    .end local v1    # "v":Lcom/fasterxml/jackson/core/Version;
    :cond_0
    return-object v1

    .line 94
    .restart local v1    # "v":Lcom/fasterxml/jackson/core/Version;
    .restart local v2    # "vClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "versionInfoClassName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to get Versioned out of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "vClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "versionInfoClassName":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static parseVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/core/Version;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "artifactId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 145
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 146
    sget-object v0, Lcom/fasterxml/jackson/core/util/VersionUtil;->V_SEP:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, "parts":[Ljava/lang/String;
    new-instance v0, Lcom/fasterxml/jackson/core/Version;

    aget-object v1, v7, v3

    invoke-static {v1}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I

    move-result v1

    array-length v2, v7

    if-le v2, v4, :cond_1

    aget-object v2, v7, v4

    .line 148
    invoke-static {v2}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I

    move-result v2

    :goto_0
    array-length v4, v7

    if-le v4, v5, :cond_0

    aget-object v3, v7, v5

    .line 149
    invoke-static {v3}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I

    move-result v3

    :cond_0
    array-length v4, v7

    if-le v4, v6, :cond_2

    aget-object v4, v7, v6

    :goto_1
    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/core/Version;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v7    # "parts":[Ljava/lang/String;
    :goto_2
    return-object v0

    .restart local v7    # "parts":[Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 148
    goto :goto_0

    .line 149
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 153
    .end local v7    # "parts":[Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    goto :goto_2
.end method

.method protected static parseVersionPart(Ljava/lang/String;)I
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 157
    const/4 v3, 0x0

    .line 158
    .local v3, "number":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 159
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 160
    .local v0, "c":C
    const/16 v4, 0x39

    if-gt v0, v4, :cond_0

    const/16 v4, 0x30

    if-ge v0, v4, :cond_1

    .line 163
    .end local v0    # "c":C
    :cond_0
    return v3

    .line 161
    .restart local v0    # "c":C
    :cond_1
    mul-int/lit8 v4, v3, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v3, v4, v5

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final throwInternal()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Internal error: this code path should never get executed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static versionFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/core/Version;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/core/Version;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/core/util/VersionUtil;->packageVersionFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    .line 75
    .local v0, "version":Lcom/fasterxml/jackson/core/Version;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    .end local v0    # "version":Lcom/fasterxml/jackson/core/Version;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/VersionUtil;->_v:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method
