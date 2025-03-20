.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;
.super Ljava/lang/Object;
.source "ShoppingListServiceImpl.java"

# interfaces
.implements Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field private shoppingListConverter:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/ShoppingListConverter;

.field private shoppingListDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x27a8102982de22e0L

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl"

    const/16 v3, 0x96

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/ShoppingListConverter;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->shoppingListDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;

    .line 45
    iput-object p2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->shoppingListConverter:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/ShoppingListConverter;

    .line 46
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Void;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->lambda$saveOrUpdate$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0x87

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$1(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->lambda$getById$1(Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;

    move-result-object v1

    const/16 v2, 0x88

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$10(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->lambda$moveSelectedToEnd$9(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V

    const/16 v1, 0x91

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$11(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->lambda$moveSelectedToEnd$10(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x92

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$12(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->lambda$moveSelectedToEnd$11(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V

    const/16 v1, 0x93

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$13(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->lambda$getShareableText$12(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x94

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$14(Ljava/lang/StringBuilder;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->lambda$getShareableText$13(Ljava/lang/StringBuilder;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    const/16 v1, 0x95

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$2(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->lambda$deleteById$2(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0x89

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$3(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;)Lrx/Observable;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->lambda$getAllListItems$3()Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x8a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$4(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->getItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;

    move-result-object v1

    const/16 v2, 0x8b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$5(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->lambda$getAllListItemsSync$4(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V

    const/16 v1, 0x8c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$6(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;Ljava/util/List;)Lrx/Observable;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->lambda$deleteSelected$5(Ljava/util/List;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x8d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$7(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->lambda$deleteSelectedSync$6(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$8(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->lambda$deleteSelectedSync$7(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V

    const/16 v1, 0x8f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$9(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->lambda$moveSelectedToEnd$8(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x90

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private calculateReminderTime(Lorg/joda/time/DateTime;II)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 300
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    .line 302
    .local v0, "dateTime":Lorg/joda/time/DateTime;
    packed-switch p3, :pswitch_data_0

    const/16 v2, 0x67

    aput-boolean v3, v1, v2

    .line 317
    :goto_0
    const/16 v2, 0x6c

    aput-boolean v3, v1, v2

    return-object v0

    .line 305
    :pswitch_0
    invoke-virtual {p1, p2}, Lorg/joda/time/DateTime;->minusMinutes(I)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 306
    const/16 v2, 0x68

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 308
    :pswitch_1
    invoke-virtual {p1, p2}, Lorg/joda/time/DateTime;->minusHours(I)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 309
    const/16 v2, 0x69

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 311
    :pswitch_2
    invoke-virtual {p1, p2}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 312
    const/16 v2, 0x6a

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 314
    :pswitch_3
    invoke-virtual {p1, p2}, Lorg/joda/time/DateTime;->minusWeeks(I)Lorg/joda/time/DateTime;

    move-result-object v0

    const/16 v2, 0x6b

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private deleteByIdSync(Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 169
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->shoppingListDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;->deleteById(Ljava/lang/Long;)Ljava/lang/Boolean;

    .line 170
    const/4 v1, 0x0

    const/16 v2, 0x36

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private deleteSelectedSync(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "deletedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0x43

    aput-boolean v5, v1, v2

    .line 207
    invoke-static {p1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl$$Lambda$8;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v3

    const/16 v4, 0x44

    aput-boolean v5, v1, v4

    .line 208
    invoke-virtual {v2, v3}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl$$Lambda$9;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;Ljava/util/List;)Lrx/functions/Action1;

    move-result-object v3

    const/16 v4, 0x45

    aput-boolean v5, v1, v4

    .line 209
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 217
    const/16 v2, 0x46

    aput-boolean v5, v1, v2

    return-object v0
.end method

.method private getAllListItemsSync()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v0, "listItem":Ljava/util/List;, "Ljava/util/List<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;>;"
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->shoppingListDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;

    const/16 v3, 0x3b

    aput-boolean v5, v1, v3

    .line 187
    invoke-interface {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;->getAllEntities()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl$$Lambda$5;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;)Lrx/functions/Func1;

    move-result-object v3

    const/16 v4, 0x3c

    aput-boolean v5, v1, v4

    .line 188
    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl$$Lambda$6;->lambdaFactory$(Ljava/util/List;)Lrx/functions/Action1;

    move-result-object v3

    const/16 v4, 0x3d

    aput-boolean v5, v1, v4

    .line 189
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 190
    const/16 v2, 0x3e

    aput-boolean v5, v1, v2

    return-object v0
.end method

.method private getByIdSync(Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 92
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;-><init>()V

    const/16 v2, 0x12

    aput-boolean v4, v0, v2

    .line 93
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->shoppingListDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;->getById(Ljava/lang/Long;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;

    move-result-object v2

    const/16 v3, 0x13

    aput-boolean v4, v0, v3

    .line 94
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->shoppingListConverter:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/ShoppingListConverter;

    invoke-interface {v3, v2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/ShoppingListConverter;->convertEntityToItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V

    .line 95
    const/16 v2, 0x14

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method private getItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 293
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;-><init>()V

    const/16 v2, 0x65

    aput-boolean v3, v0, v2

    .line 294
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->shoppingListConverter:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/ShoppingListConverter;

    invoke-interface {v2, p1, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/ShoppingListConverter;->convertEntityToItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V

    .line 295
    const/16 v2, 0x66

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$deleteById$2(Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 161
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->deleteByIdSync(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0x84

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$deleteSelected$5(Ljava/util/List;)Lrx/Observable;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 197
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->deleteSelectedSync(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x81

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static synthetic lambda$deleteSelectedSync$6(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isSelected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$deleteSelectedSync$7(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 212
    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d

    aput-boolean v3, v0, v2

    .line 213
    invoke-direct {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->deleteByIdSync(Ljava/lang/String;)Ljava/lang/Void;

    const/16 v2, 0x7e

    aput-boolean v3, v0, v2

    .line 214
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    const/16 v1, 0x7f

    aput-boolean v3, v0, v1

    return-void
.end method

.method private synthetic lambda$getAllListItems$3()Lrx/Observable;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 177
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->getAllListItemsSync()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x83

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static synthetic lambda$getAllListItemsSync$4(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 189
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x82

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private synthetic lambda$getById$1(Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->getByIdSync(Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;

    move-result-object v1

    const/16 v2, 0x85

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static synthetic lambda$getShareableText$12(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v2

    .line 265
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x74

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v3, 0x76

    aput-boolean v1, v2, v3

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x75

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method private static synthetic lambda$getShareableText$13(Ljava/lang/StringBuilder;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 268
    const-string v1, "- "

    const/16 v2, 0x6d

    aput-boolean v4, v0, v2

    .line 269
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[ "

    const/16 v3, 0x6e

    aput-boolean v4, v0, v3

    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x6f

    aput-boolean v4, v0, v2

    .line 271
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getQuantity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] "

    const/16 v3, 0x70

    aput-boolean v4, v0, v3

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x71

    aput-boolean v4, v0, v2

    .line 273
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    const/16 v3, 0x72

    aput-boolean v4, v0, v3

    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const/16 v1, 0x73

    aput-boolean v4, v0, v1

    return-void
.end method

.method private static synthetic lambda$moveSelectedToEnd$10(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isSelected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x78

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static synthetic lambda$moveSelectedToEnd$11(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 233
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x77

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static synthetic lambda$moveSelectedToEnd$8(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v2

    .line 226
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x7a

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v3, 0x7c

    aput-boolean v1, v2, v3

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x7b

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method private static synthetic lambda$moveSelectedToEnd$9(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 227
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x79

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private synthetic lambda$saveOrUpdate$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    invoke-virtual {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->saveOrUpdateSync(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0x86

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public deleteById(Ljava/lang/String;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 160
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl$$Lambda$3;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v2

    const/16 v3, 0x32

    aput-boolean v4, v1, v3

    .line 161
    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x33

    aput-boolean v4, v1, v3

    .line 162
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x34

    aput-boolean v4, v1, v3

    .line 163
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 164
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Void;>;"
    const/16 v2, 0x35

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public deleteSelected(Ljava/util/List;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 196
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl$$Lambda$7;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;Ljava/util/List;)Lrx/functions/Func0;

    move-result-object v2

    const/16 v3, 0x3f

    aput-boolean v4, v1, v3

    .line 197
    invoke-static {v2}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x40

    aput-boolean v4, v1, v3

    .line 198
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x41

    aput-boolean v4, v1, v3

    .line 199
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 200
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/String;>;"
    const/16 v2, 0x42

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getAllListItems()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 176
    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl$$Lambda$4;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;)Lrx/functions/Func0;

    move-result-object v2

    const/16 v3, 0x37

    aput-boolean v4, v1, v3

    .line 177
    invoke-static {v2}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x38

    aput-boolean v4, v1, v3

    .line 178
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x39

    aput-boolean v4, v1, v3

    .line 179
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 180
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;>;"
    const/16 v2, 0x3a

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getById(Ljava/lang/String;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 83
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl$$Lambda$2;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v2

    const/16 v3, 0xe

    aput-boolean v4, v1, v3

    .line 84
    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0xf

    aput-boolean v4, v1, v3

    .line 85
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x10

    aput-boolean v4, v1, v3

    .line 86
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 87
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;>;"
    const/16 v2, 0x11

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getDeadLine(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Lorg/joda/time/DateTime;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 113
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-boolean v5, v0, v2

    .line 114
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d

    aput-boolean v5, v0, v3

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->getDateFromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v1

    const/16 v2, 0x1e

    aput-boolean v5, v0, v2

    return-object v1
.end method

.method public getEntityByIdSync(Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 154
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->shoppingListDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;->getById(Ljava/lang/Long;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;

    move-result-object v1

    const/16 v2, 0x31

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getReminderDate(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Lorg/joda/time/DateTime;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v2

    .line 101
    invoke-virtual {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->getDeadLine(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Lorg/joda/time/DateTime;

    move-result-object v3

    const/16 v1, 0x15

    aput-boolean v6, v2, v1

    .line 103
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    const/16 v4, 0x16

    aput-boolean v6, v2, v4

    :goto_0
    const/16 v4, 0x18

    aput-boolean v6, v2, v4

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x19

    aput-boolean v6, v2, v4

    .line 105
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderUnit()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x1a

    aput-boolean v6, v2, v5

    .line 106
    invoke-direct {p0, v3, v1, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->calculateReminderTime(Lorg/joda/time/DateTime;II)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 107
    .local v0, "reminderTime":Lorg/joda/time/DateTime;
    const/16 v1, 0x1b

    aput-boolean v6, v2, v1

    return-object v0

    .line 103
    .end local v0    # "reminderTime":Lorg/joda/time/DateTime;
    :cond_0
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderCount()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x17

    aput-boolean v6, v2, v4

    goto :goto_0
.end method

.method public getReminderStatusResource(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 121
    const v0, 0x7f02009d

    const/16 v2, 0x1f

    aput-boolean v6, v1, v2

    .line 122
    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    const/16 v3, 0x20

    aput-boolean v6, v1, v3

    .line 123
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    const v0, 0x7f02009c

    .local v0, "reminderStatus":I
    const/16 v2, 0x21

    aput-boolean v6, v1, v2

    .line 148
    :goto_0
    const/16 v2, 0x30

    aput-boolean v6, v1, v2

    return v0

    .line 127
    .end local v0    # "reminderStatus":I
    :cond_0
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderCount()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const/16 v3, 0x22

    aput-boolean v6, v1, v3

    .line 129
    invoke-virtual {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->getDeadLine(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Lorg/joda/time/DateTime;

    move-result-object v3

    const/16 v4, 0x23

    aput-boolean v6, v1, v4

    .line 130
    invoke-virtual {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->getReminderDate(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Lorg/joda/time/DateTime;

    move-result-object v4

    const/16 v5, 0x24

    aput-boolean v6, v1, v5

    .line 131
    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->isBefore(Lorg/joda/time/ReadableInstant;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v4, 0x25

    aput-boolean v6, v1, v4

    .line 135
    :goto_1
    invoke-virtual {v3, v2}, Lorg/joda/time/DateTime;->isBefore(Lorg/joda/time/ReadableInstant;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x28

    aput-boolean v6, v1, v2

    .line 139
    .restart local v0    # "reminderStatus":I
    :goto_2
    const/16 v2, 0x2a

    aput-boolean v6, v1, v2

    goto :goto_0

    .line 131
    .end local v0    # "reminderStatus":I
    :cond_1
    invoke-virtual {v2, v4}, Lorg/joda/time/DateTime;->isBefore(Lorg/joda/time/ReadableInstant;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x26

    aput-boolean v6, v1, v4

    goto :goto_1

    .line 133
    :cond_2
    const v0, 0x7f02009f

    .restart local v0    # "reminderStatus":I
    const/16 v2, 0x27

    aput-boolean v6, v1, v2

    goto :goto_2

    .line 137
    .end local v0    # "reminderStatus":I
    :cond_3
    const v0, 0x7f02009e

    .restart local v0    # "reminderStatus":I
    const/16 v2, 0x29

    aput-boolean v6, v1, v2

    goto :goto_2

    .line 140
    .end local v0    # "reminderStatus":I
    :cond_4
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v2, 0x2b

    aput-boolean v6, v1, v2

    goto :goto_0

    :cond_5
    const/16 v3, 0x2c

    aput-boolean v6, v1, v3

    .line 142
    invoke-virtual {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->getDeadLine(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Lorg/joda/time/DateTime;

    move-result-object v3

    const/16 v4, 0x2d

    aput-boolean v6, v1, v4

    .line 143
    invoke-virtual {v3, v2}, Lorg/joda/time/DateTime;->isBefore(Lorg/joda/time/ReadableInstant;)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x2e

    aput-boolean v6, v1, v2

    goto :goto_0

    .line 145
    :cond_6
    const v0, 0x7f02009e

    .restart local v0    # "reminderStatus":I
    const/16 v2, 0x2f

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method public getShareableText(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x56

    aput-boolean v5, v0, v2

    .line 259
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getListName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x57

    aput-boolean v5, v0, v2

    .line 260
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x58

    aput-boolean v5, v0, v2

    .line 262
    if-nez p2, :cond_0

    const/16 v2, 0x59

    aput-boolean v5, v0, v2

    .line 279
    :goto_0
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    aput-boolean v5, v0, v2

    .line 282
    :goto_1
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x60

    aput-boolean v5, v0, v2

    .line 288
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    aput-boolean v5, v0, v2

    return-object v1

    .line 262
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x5a

    aput-boolean v5, v0, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x5b

    aput-boolean v5, v0, v2

    .line 264
    invoke-static {p2}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl$$Lambda$14;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v3

    const/16 v4, 0x5c

    aput-boolean v5, v0, v4

    .line 265
    invoke-virtual {v2, v3}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl$$Lambda$15;->lambdaFactory$(Ljava/lang/StringBuilder;)Lrx/functions/Action1;

    move-result-object v3

    const/16 v4, 0x5d

    aput-boolean v5, v0, v4

    .line 266
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    const/16 v2, 0x5e

    aput-boolean v5, v0, v2

    goto :goto_1

    .line 282
    :cond_2
    const/16 v2, 0x61

    aput-boolean v5, v0, v2

    .line 284
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x62

    aput-boolean v5, v0, v2

    .line 285
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x63

    aput-boolean v5, v0, v2

    goto :goto_2
.end method

.method public moveSelectedToEnd(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v3

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, "nonSelectedItems":Ljava/util/List;, "Ljava/util/List<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;>;"
    const/16 v4, 0x47

    aput-boolean v7, v3, v4

    .line 225
    invoke-static {p1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl$$Lambda$10;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v5

    const/16 v6, 0x48

    aput-boolean v7, v3, v6

    .line 226
    invoke-virtual {v4, v5}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    invoke-static {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl$$Lambda$11;->lambdaFactory$(Ljava/util/List;)Lrx/functions/Action1;

    move-result-object v5

    const/16 v6, 0x49

    aput-boolean v7, v3, v6

    .line 227
    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    const/16 v4, 0x4a

    aput-boolean v7, v3, v4

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v1, "selectedItems":Ljava/util/List;, "Ljava/util/List<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;>;"
    const/16 v4, 0x4b

    aput-boolean v7, v3, v4

    .line 231
    invoke-static {p1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl$$Lambda$12;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v5

    const/16 v6, 0x4c

    aput-boolean v7, v3, v6

    .line 232
    invoke-virtual {v4, v5}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl$$Lambda$13;->lambdaFactory$(Ljava/util/List;)Lrx/functions/Action1;

    move-result-object v5

    const/16 v6, 0x4d

    aput-boolean v7, v3, v6

    .line 233
    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    const/16 v4, 0x4e

    aput-boolean v7, v3, v4

    .line 235
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 236
    move-object v2, v0

    .line 237
    .local v2, "shoppingListItems":Ljava/util/List;, "Ljava/util/List<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;>;"
    const/16 v4, 0x4f

    aput-boolean v7, v3, v4

    return-object v2
.end method

.method public saveOrUpdate(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 59
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl$$Lambda$1;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/util/concurrent/Callable;

    move-result-object v2

    const/4 v3, 0x3

    aput-boolean v4, v1, v3

    .line 60
    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v2

    const/4 v3, 0x4

    aput-boolean v4, v1, v3

    .line 61
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/4 v3, 0x5

    aput-boolean v4, v1, v3

    .line 62
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 63
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Void;>;"
    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public saveOrUpdateSync(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getListName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    .line 73
    :goto_0
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;-><init>()V

    const/16 v2, 0xa

    aput-boolean v3, v0, v2

    .line 74
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->shoppingListConverter:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/ShoppingListConverter;

    invoke-interface {v2, p1, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/ShoppingListConverter;->convertItemToEntity(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;)V

    const/16 v2, 0xb

    aput-boolean v3, v0, v2

    .line 75
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->shoppingListDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;

    invoke-interface {v2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;->save(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    aput-boolean v3, v0, v2

    .line 76
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setId(Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x0

    const/16 v2, 0xd

    aput-boolean v3, v0, v2

    return-object v1

    .line 69
    :cond_0
    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    .line 71
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setListName(Ljava/lang/String;)V

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->shoppingListDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;

    invoke-interface {v1, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;->setContext(Landroid/content/Context;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;)V

    aput-boolean v2, v0, v2

    .line 52
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->shoppingListConverter:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/ShoppingListConverter;

    invoke-interface {v1, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/ShoppingListConverter;->setContext(Landroid/content/Context;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;)V

    .line 53
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->context:Landroid/content/Context;

    .line 54
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method public sortList(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/ShoppingListServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 243
    const-string v1, "sort.by.name"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    aput-boolean v2, v0, v1

    .line 245
    invoke-static {p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators;->getNameComparator(Z)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v1, 0x51

    aput-boolean v2, v0, v1

    .line 252
    :goto_0
    const/16 v1, 0x55

    aput-boolean v2, v0, v1

    return-void

    .line 247
    :cond_0
    const-string v1, "sort.by.priority"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x52

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x53

    aput-boolean v2, v0, v1

    .line 249
    invoke-static {p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators;->getPriorityComparator(Z)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v1, 0x54

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
