.class public final Lio/sentry/config/Lookup;
.super Ljava/lang/Object;
.source "Lookup.java"


# static fields
.field private static checkJndi:Z

.field private static configProps:Ljava/util/Properties;

.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 17
    const-class v3, Lio/sentry/config/Lookup;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    sput-object v3, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    .line 32
    const/4 v3, 0x1

    sput-boolean v3, Lio/sentry/config/Lookup;->checkJndi:Z

    .line 35
    invoke-static {}, Lio/sentry/config/Lookup;->getConfigFilePath()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "filePath":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lio/sentry/config/Lookup;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 39
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 40
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    sput-object v3, Lio/sentry/config/Lookup;->configProps:Ljava/util/Properties;

    .line 41
    sget-object v3, Lio/sentry/config/Lookup;->configProps:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 48
    .end local v2    # "input":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 43
    .restart local v2    # "input":Ljava/io/InputStream;
    :cond_0
    sget-object v3, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    const-string v4, "Sentry configuration file not found in filesystem or classpath: \'{}\'."

    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v2    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    const-string v4, "Error loading Sentry configuration file \'{}\': "

    invoke-interface {v3, v4, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private static getConfigFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    const-string v1, "sentry.properties.file"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "filePath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 61
    const-string v1, "SENTRY_PROPERTIES_FILE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    if-nez v0, :cond_1

    .line 65
    const-string v0, "sentry.properties"

    .line 68
    :cond_1
    return-object v0
.end method

.method private static getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 78
    :goto_0
    return-object v2

    .line 77
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 78
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method

.method public static lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/sentry/config/Lookup;->lookup(Ljava/lang/String;Lio/sentry/dsn/Dsn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lookup(Ljava/lang/String;Lio/sentry/dsn/Dsn;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "dsn"    # Lio/sentry/dsn/Dsn;

    .prologue
    const/4 v5, 0x0

    .line 105
    const/4 v1, 0x0

    .line 107
    .local v1, "value":Ljava/lang/String;
    sget-boolean v2, Lio/sentry/config/Lookup;->checkJndi:Z

    if-eqz v2, :cond_0

    .line 111
    :try_start_0
    const-string v2, "javax.naming.InitialContext"

    const/4 v3, 0x0

    const-class v4, Lio/sentry/dsn/Dsn;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 112
    invoke-static {p0}, Lio/sentry/config/JndiLookup;->jndiLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_0

    .line 114
    sget-object v2, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    const-string v3, "Found {}={} in JNDI."

    invoke-interface {v2, v3, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sentry."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_1

    .line 126
    sget-object v2, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    const-string v3, "Found {}={} in Java System Properties."

    invoke-interface {v2, v3, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    :cond_1
    if-nez v1, :cond_2

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SENTRY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    const-string v4, "_"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_2

    .line 134
    sget-object v2, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    const-string v3, "Found {}={} in System Environment Variables."

    invoke-interface {v2, v3, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    :cond_2
    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    .line 140
    invoke-virtual {p1}, Lio/sentry/dsn/Dsn;->getOptions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "value":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 141
    .restart local v1    # "value":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 142
    sget-object v2, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    const-string v3, "Found {}={} in DSN."

    invoke-interface {v2, v3, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    :cond_3
    if-nez v1, :cond_4

    sget-object v2, Lio/sentry/config/Lookup;->configProps:Ljava/util/Properties;

    if-eqz v2, :cond_4

    .line 148
    sget-object v2, Lio/sentry/config/Lookup;->configProps:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_4

    .line 150
    sget-object v2, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    const-string v3, "Found {}={} in {}."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    const-string v6, "sentry.properties"

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_4
    if-eqz v1, :cond_5

    .line 155
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 157
    :goto_1
    return-object v2

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    sget-object v2, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JNDI is not available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 118
    sput-boolean v5, Lio/sentry/config/Lookup;->checkJndi:Z

    goto/16 :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 116
    :catch_1
    move-exception v0

    goto :goto_2
.end method
