.class public Lcom/fsck/k9/controller/PendingCommandSerializer;
.super Ljava/lang/Object;
.source "PendingCommandSerializer.java"


# static fields
.field private static final INSTANCE:Lcom/fsck/k9/controller/PendingCommandSerializer;


# instance fields
.field private final adapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/squareup/moshi/JsonAdapter",
            "<+",
            "Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/fsck/k9/controller/PendingCommandSerializer;

    invoke-direct {v0}, Lcom/fsck/k9/controller/PendingCommandSerializer;-><init>()V

    sput-object v0, Lcom/fsck/k9/controller/PendingCommandSerializer;->INSTANCE:Lcom/fsck/k9/controller/PendingCommandSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v2, Lcom/squareup/moshi/Moshi$Builder;

    invoke-direct {v2}, Lcom/squareup/moshi/Moshi$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/squareup/moshi/Moshi$Builder;->build()Lcom/squareup/moshi/Moshi;

    move-result-object v1

    .line 30
    .local v1, "moshi":Lcom/squareup/moshi/Moshi;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v0, "adapters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/squareup/moshi/JsonAdapter<+Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;>;>;"
    const-string v2, "move_or_copy"

    const-class v3, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;

    invoke-virtual {v1, v3}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v2, "append"

    const-class v3, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;

    invoke-virtual {v1, v3}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v2, "empty_trash"

    const-class v3, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingEmptyTrash;

    invoke-virtual {v1, v3}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v2, "expunge"

    const-class v3, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;

    invoke-virtual {v1, v3}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v2, "mark_all_as_read"

    const-class v3, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;

    invoke-virtual {v1, v3}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v2, "set_flag"

    const-class v3, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;

    invoke-virtual {v1, v3}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/controller/PendingCommandSerializer;->adapters:Ljava/util/Map;

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/fsck/k9/controller/PendingCommandSerializer;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/fsck/k9/controller/PendingCommandSerializer;->INSTANCE:Lcom/fsck/k9/controller/PendingCommandSerializer;

    return-object v0
.end method


# virtual methods
.method public serialize(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;, "TT;"
    iget-object v1, p0, Lcom/fsck/k9/controller/PendingCommandSerializer;->adapters:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;->getCommandName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/moshi/JsonAdapter;

    .line 51
    .local v0, "adapter":Lcom/squareup/moshi/JsonAdapter;, "Lcom/squareup/moshi/JsonAdapter<TT;>;"
    if-nez v0, :cond_0

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported pending command type!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_0
    invoke-virtual {v0, p1}, Lcom/squareup/moshi/JsonAdapter;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unserialize(JLjava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .locals 5
    .param p1, "databaseId"    # J
    .param p3, "commandName"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v3, p0, Lcom/fsck/k9/controller/PendingCommandSerializer;->adapters:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/moshi/JsonAdapter;

    .line 59
    .local v0, "adapter":Lcom/squareup/moshi/JsonAdapter;, "Lcom/squareup/moshi/JsonAdapter<+Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;>;"
    if-nez v0, :cond_0

    .line 60
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported pending command type!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_0
    :try_start_0
    invoke-virtual {v0, p4}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    .line 64
    .local v1, "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    iput-wide p1, v1, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;->databaseId:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-object v1

    .line 66
    .end local v1    # "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    :catch_0
    move-exception v2

    .line 67
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/io/IOError;

    invoke-direct {v3, v2}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
