.class Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;
.super Ljava/lang/Object;
.source "ShoppingListsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;,
        Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;
    }
.end annotation


# static fields
.field private static final FILE_ENDING:Ljava/lang/String; = ".lst"

.field private static final TAG:Ljava/lang/String; = "ShoppingListsManager"


# instance fields
.field private directory:Ljava/lang/String;

.field private directoryObserver:Landroid/os/FileObserver;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woefe/shoppinglist/shoppinglist/ListsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final shoppingListsMetadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;

.field private final trashcan:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->trashcan:Ljava/util/Map;

    .line 46
    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;-><init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$1;)V

    iput-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->shoppingListsMetadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->listeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->shoppingListsMetadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;

    return-object p0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;Ljava/io/File;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->loadFromFile(Ljava/io/File;)V

    return-void
.end method

.method private addShoppingList(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;
    .locals 2

    .line 148
    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;-><init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/lang/String;Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$1;)V

    .line 149
    new-instance p2, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$2;

    invoke-direct {p2, p0, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$2;-><init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)V

    invoke-virtual {p1, p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->addListener(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->setupObserver(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)V

    .line 156
    iget-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->shoppingListsMetadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;

    invoke-static {p1, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->access$900(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)V

    return-object v0
.end method

.method private loadFromDirectory(Ljava/lang/String;)V
    .locals 4

    .line 139
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 141
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-direct {p0, v2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->loadFromFile(Ljava/io/File;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadFromFile(Ljava/io/File;)V
    .locals 3

    .line 130
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListUnmarshaller;->unmarshal(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->addShoppingList(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    .line 132
    sget-object v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully loaded file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/woefe/shoppinglist/shoppinglist/UnmarshallException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private maybeAddInitialList()V
    .locals 6

    .line 115
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->directory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    if-nez v4, :cond_1

    .line 116
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    :try_start_0
    const-string v0, "Shopping List"

    .line 121
    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->addList(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/woefe/shoppinglist/shoppinglist/ShoppingListException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to add initial list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    return-void
.end method

.method private setupObserver(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)V
    .locals 2

    .line 161
    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$3;

    invoke-static {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$1000(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$3;-><init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;Ljava/lang/String;Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)V

    .line 181
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 182
    invoke-static {p1, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$402(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;Landroid/os/FileObserver;)Landroid/os/FileObserver;

    return-void
.end method

.method private writeAllUnsavedChanges()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->trashcan:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    .line 189
    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$1000(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->shoppingListsMetadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->access$500(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    .line 193
    invoke-static {v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$800(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-static {v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$1000(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-static {v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$1100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListMarshaller;->marshall(Ljava/io/OutputStream;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;)V

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrote file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$1000(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method addList(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/woefe/shoppinglist/shoppinglist/ShoppingListException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->hasList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance p1, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListException;

    const-string v0, "List already exists"

    invoke-direct {p1, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->directory:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".lst"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-direct {v1, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->addShoppingList(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    move-result-object p1

    const/4 v0, 0x1

    .line 208
    invoke-static {p1, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$802(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;Z)Z

    return-void
.end method

.method getList(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->shoppingListsMetadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;

    invoke-static {v0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->access$1400(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 224
    invoke-static {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$1100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getListNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->shoppingListsMetadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->access$1500(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method hasList(Ljava/lang/String;)Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->shoppingListsMetadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;

    invoke-static {v0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->access$1700(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method onStart(Ljava/lang/String;)V
    .locals 3

    .line 63
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->directory:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$1;-><init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->directoryObserver:Landroid/os/FileObserver;

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing from dir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->maybeAddInitialList()V

    .line 86
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->loadFromDirectory(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->directoryObserver:Landroid/os/FileObserver;

    invoke-virtual {p1}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method onStop()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->directoryObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->directoryObserver:Landroid/os/FileObserver;

    .line 95
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->trashcan:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    .line 96
    invoke-static {v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$400(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Landroid/os/FileObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->shoppingListsMetadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->access$500(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    .line 99
    invoke-static {v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$400(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Landroid/os/FileObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    goto :goto_1

    .line 103
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->writeAllUnsavedChanges()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Writing of changes failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    :goto_2
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->shoppingListsMetadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->access$600(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;)V

    .line 109
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->trashcan:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method removeList(Ljava/lang/String;)Z
    .locals 2

    .line 212
    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->hasList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->shoppingListsMetadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;

    invoke-static {v0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->access$1300(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    move-result-object p1

    .line 214
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->trashcan:Ljava/util/Map;

    invoke-static {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$1100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method removeListChangeListenerListener(Lcom/woefe/shoppinglist/shoppinglist/ListsChangeListener;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 242
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->shoppingListsMetadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;

    invoke-static {v0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->access$1300(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    move-result-object p1

    .line 244
    invoke-static {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$1100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->setName(Ljava/lang/String;)V

    .line 245
    iget-object p2, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->shoppingListsMetadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;

    invoke-static {p2, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->access$900(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)V

    :cond_0
    return-void
.end method

.method setListChangeListener(Lcom/woefe/shoppinglist/shoppinglist/ListsChangeListener;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method size()I
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->shoppingListsMetadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->access$1600(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;)I

    move-result v0

    return v0
.end method
