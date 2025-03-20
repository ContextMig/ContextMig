.class public final Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract;
.super Ljava/lang/Object;
.source "DbContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract$ShoppingListsEntry;,
        Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract$ItemsEntry;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final BASE_CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_AUTHORITY:Ljava/lang/String; = "pl.com.andrzejgrzyb.shoppinglist"

.field public static final PATH_ITEMS:Ljava/lang/String; = "items"

.field public static final PATH_SHOPPING_LIST:Ljava/lang/String; = "shoppingLists"

.field public static final PATH_USERS:Ljava/lang/String; = "users"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4e0c79cdc5e4ababL    # -4.5262060752411754E-68

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/data/DbContract"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    const-string v1, "content://pl.com.andrzejgrzyb.shoppinglist"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    aput-boolean v2, v0, v2

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
