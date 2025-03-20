.class Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;
.super Ljava/lang/Object;
.source "ShoppingListsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetadataContainer"
.end annotation


# instance fields
.field private byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private filenameResolver:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;


# direct methods
.method private constructor <init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->byName:Ljava/util/Map;

    .line 264
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->filenameResolver:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$1;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;-><init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->removeByName(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->getByName(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;)Ljava/util/Set;
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->getListNames()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;)I
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->size()I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;Ljava/lang/String;)Z
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->hasName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->removeByFile(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;)Ljava/util/Collection;
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->clear()V

    return-void
.end method

.method static synthetic access$900(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->add(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)V

    return-void
.end method

.method private add(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)V
    .locals 2

    .line 267
    invoke-static {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$1100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->getName()Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->byName:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->filenameResolver:Ljava/util/Map;

    invoke-static {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$1000(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-direct {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->notifyListeners()V

    return-void
.end method

.method private clear()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->filenameResolver:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 275
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->byName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 276
    invoke-direct {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->notifyListeners()V

    return-void
.end method

.method private getByFile(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->filenameResolver:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->getByName(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    move-result-object p1

    return-object p1
.end method

.method private getByName(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->byName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    return-object p1
.end method

.method private getListNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->byName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private hasName(Ljava/lang/String;)Z
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->byName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private notifyListeners()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->access$1800(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woefe/shoppinglist/shoppinglist/ListsChangeListener;

    .line 319
    invoke-interface {v1}, Lcom/woefe/shoppinglist/shoppinglist/ListsChangeListener;->onListsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeByFile(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->byName:Ljava/util/Map;

    iget-object v1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->filenameResolver:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    .line 288
    invoke-direct {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->notifyListeners()V

    return-object p1
.end method

.method private removeByName(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->byName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    .line 281
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->filenameResolver:Ljava/util/Map;

    invoke-static {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$1000(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-direct {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->notifyListeners()V

    return-object p1
.end method

.method private size()I
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->byName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method private values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->byName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
