.class public final Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract$ItemsEntry;
.super Ljava/lang/Object;
.source "DbContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemsEntry"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final COLUMN_CHECKED:Ljava/lang/String; = "checked"

.field public static final COLUMN_ID_CLOUD:Ljava/lang/String; = "idCloud"

.field public static final COLUMN_LIST_ID:Ljava/lang/String; = "listId"

.field public static final COLUMN_LIST_ID_CLOUD:Ljava/lang/String; = "listIdCloud"

.field public static final COLUMN_MODIFICATION_DATE:Ljava/lang/String; = "modificationDate"

.field public static final COLUMN_MODIFIED_BY_ID_CLOUD:Ljava/lang/String; = "modifiedByIdCloud"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_POSITION:Ljava/lang/String; = "position"

.field public static final COLUMN_QUANTITY:Ljava/lang/String; = "quantity"

.field public static final COLUMN_QUANTITY_UNIT:Ljava/lang/String; = "quantityUnit"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "items"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract$ItemsEntry;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5a1933696ece6dadL    # 1.0661860771493203E126

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/data/DbContract$ItemsEntry"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract$ItemsEntry;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract$ItemsEntry;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    sget-object v1, Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "items"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract$ItemsEntry;->CONTENT_URI:Landroid/net/Uri;

    aput-boolean v3, v0, v3

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract$ItemsEntry;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
