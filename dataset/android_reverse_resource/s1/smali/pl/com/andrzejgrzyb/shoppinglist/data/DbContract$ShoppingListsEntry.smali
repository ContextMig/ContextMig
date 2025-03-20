.class public final Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract$ShoppingListsEntry;
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
    name = "ShoppingListsEntry"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_HASHTAG:Ljava/lang/String; = "hashtag"

.field public static final COLUMN_ID_CLOUD:Ljava/lang/String; = "idCloud"

.field public static final COLUMN_MODIFICATION_DATE:Ljava/lang/String; = "modificationDate"

.field public static final COLUMN_MODIFIED_BY_ID_CLOUD:Ljava/lang/String; = "modifiedByIdCloud"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_OWNER_ID_CLOUD:Ljava/lang/String; = "ownerIdCloud"

.field public static final TABLE_NAME:Ljava/lang/String; = "shoppingLists"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract$ShoppingListsEntry;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x73c990e8dce8ba75L    # 5.720185479289091E249

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/data/DbContract$ShoppingListsEntry"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract$ShoppingListsEntry;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbContract$ShoppingListsEntry;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
