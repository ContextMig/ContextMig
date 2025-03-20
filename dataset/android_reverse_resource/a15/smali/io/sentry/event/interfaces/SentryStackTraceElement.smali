.class public Lio/sentry/event/interfaces/SentryStackTraceElement;
.super Ljava/lang/Object;
.source "SentryStackTraceElement.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final absPath:Ljava/lang/String;

.field private final colno:Ljava/lang/Integer;

.field private final fileName:Ljava/lang/String;

.field private final function:Ljava/lang/String;

.field private final lineno:I

.field private final locals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Ljava/lang/String;

.field private final platform:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "lineno"    # I
    .param p5, "colno"    # Ljava/lang/Integer;
    .param p6, "absPath"    # Ljava/lang/String;
    .param p7, "platform"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p8, "locals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->module:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->function:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->fileName:Ljava/lang/String;

    .line 58
    iput p4, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->lineno:I

    .line 59
    iput-object p5, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->colno:Ljava/lang/Integer;

    .line 60
    iput-object p6, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->absPath:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->platform:Ljava/lang/String;

    .line 62
    iput-object p8, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->locals:Ljava/util/Map;

    .line 63
    return-void
.end method

.method private static fromStackTraceElement(Ljava/lang/StackTraceElement;Ljava/util/Map;)Lio/sentry/event/interfaces/SentryStackTraceElement;
    .locals 9
    .param p0, "stackTraceElement"    # Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/sentry/event/interfaces/SentryStackTraceElement;"
        }
    .end annotation

    .prologue
    .local p1, "locals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 175
    new-instance v0, Lio/sentry/event/interfaces/SentryStackTraceElement;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lio/sentry/event/interfaces/SentryStackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static fromStackTraceElements([Ljava/lang/StackTraceElement;[Lio/sentry/jvmti/Frame;)[Lio/sentry/event/interfaces/SentryStackTraceElement;
    .locals 7
    .param p0, "stackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p1, "cachedFrames"    # [Lio/sentry/jvmti/Frame;

    .prologue
    .line 139
    array-length v5, p0

    new-array v3, v5, [Lio/sentry/event/interfaces/SentryStackTraceElement;

    .line 140
    .local v3, "sentryStackTraceElements":[Lio/sentry/event/interfaces/SentryStackTraceElement;
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_2

    .line 141
    aget-object v4, p0, v0

    .line 143
    .local v4, "stackTraceElement":Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .line 144
    .local v2, "locals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_1

    .line 146
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_0

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lio/sentry/jvmti/Frame;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    :cond_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    .line 153
    aget-object v5, p1, v1

    invoke-virtual {v5}, Lio/sentry/jvmti/Frame;->getLocals()Ljava/util/Map;

    move-result-object v2

    .line 157
    :cond_1
    invoke-static {v4, v2}, Lio/sentry/event/interfaces/SentryStackTraceElement;->fromStackTraceElement(Ljava/lang/StackTraceElement;Ljava/util/Map;)Lio/sentry/event/interfaces/SentryStackTraceElement;

    move-result-object v5

    aput-object v5, v3, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "locals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_2
    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    if-ne p0, p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 193
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 195
    check-cast v0, Lio/sentry/event/interfaces/SentryStackTraceElement;

    .line 196
    .local v0, "that":Lio/sentry/event/interfaces/SentryStackTraceElement;
    iget v3, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->lineno:I

    iget v4, v0, Lio/sentry/event/interfaces/SentryStackTraceElement;->lineno:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->module:Ljava/lang/String;

    iget-object v4, v0, Lio/sentry/event/interfaces/SentryStackTraceElement;->module:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->function:Ljava/lang/String;

    iget-object v4, v0, Lio/sentry/event/interfaces/SentryStackTraceElement;->function:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->fileName:Ljava/lang/String;

    iget-object v4, v0, Lio/sentry/event/interfaces/SentryStackTraceElement;->fileName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->colno:Ljava/lang/Integer;

    iget-object v4, v0, Lio/sentry/event/interfaces/SentryStackTraceElement;->colno:Ljava/lang/Integer;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->absPath:Ljava/lang/String;

    iget-object v4, v0, Lio/sentry/event/interfaces/SentryStackTraceElement;->absPath:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->platform:Ljava/lang/String;

    iget-object v4, v0, Lio/sentry/event/interfaces/SentryStackTraceElement;->platform:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->locals:Ljava/util/Map;

    iget-object v4, v0, Lio/sentry/event/interfaces/SentryStackTraceElement;->locals:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getAbsPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->absPath:Ljava/lang/String;

    return-object v0
.end method

.method public getColno()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->colno:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFunction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->function:Ljava/lang/String;

    return-object v0
.end method

.method public getLineno()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->lineno:I

    return v0
.end method

.method public getLocals()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->locals:Ljava/util/Map;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 208
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->module:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->function:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->fileName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->lineno:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->colno:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->absPath:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->platform:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->locals:Ljava/util/Map;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SentryStackTraceElement{module=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->module:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", function=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->function:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lineno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->lineno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->colno:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", absPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->absPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", platform=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locals=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/event/interfaces/SentryStackTraceElement;->locals:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
