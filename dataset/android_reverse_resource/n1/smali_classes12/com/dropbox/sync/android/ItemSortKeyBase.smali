.class Lcom/dropbox/sync/android/ItemSortKeyBase;
.super Ljava/lang/Object;
.source "ItemSortKeyBase.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/dropbox/sync/android/ItemSortKeyBase;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<TE;>;"
    }
.end annotation


# static fields
.field public static final MAX_KEY:Lcom/dropbox/sync/android/ItemSortKey;

.field public static final MAX_SORT_KEY:Ljava/lang/String; = "~~~~~~~~MAX_KEY"

.field public static final MIN_BUT_ONE_SORT_KEY:Ljava/lang/String; = " "

.field public static final MIN_BUT_TWO_SORT_KEY:Ljava/lang/String; = "  "

.field public static final MIN_KEY:Lcom/dropbox/sync/android/ItemSortKey;

.field public static final MIN_SORT_KEY:Ljava/lang/String; = ""


# instance fields
.field final mGroupSortKey:Ljava/lang/String;

.field final mPhotoSortKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/dropbox/sync/android/ItemSortKey;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/ItemSortKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/sync/android/ItemSortKeyBase;->MIN_KEY:Lcom/dropbox/sync/android/ItemSortKey;

    .line 29
    new-instance v0, Lcom/dropbox/sync/android/ItemSortKey;

    const-string v1, "~~~~~~~~MAX_KEY"

    const-string v2, "~~~~~~~~MAX_KEY"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/ItemSortKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/sync/android/ItemSortKeyBase;->MAX_KEY:Lcom/dropbox/sync/android/ItemSortKey;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "groupSortKey"    # Ljava/lang/String;
    .param p2, "photoSortKey"    # Ljava/lang/String;

    .prologue
    .line 40
    .local p0, "this":Lcom/dropbox/sync/android/ItemSortKeyBase;, "Lcom/dropbox/sync/android/ItemSortKeyBase<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/dropbox/sync/android/ItemSortKeyBase;->mGroupSortKey:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/dropbox/sync/android/ItemSortKeyBase;->mPhotoSortKey:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/dropbox/sync/android/ItemSortKeyBase;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/dropbox/sync/android/ItemSortKeyBase;, "Lcom/dropbox/sync/android/ItemSortKeyBase<TE;>;"
    .local p1, "other":Lcom/dropbox/sync/android/ItemSortKeyBase;, "TE;"
    iget-object v1, p0, Lcom/dropbox/sync/android/ItemSortKeyBase;->mGroupSortKey:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/sync/android/ItemSortKeyBase;->mGroupSortKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, "tempResult":I
    if-eqz v0, :cond_0

    move v1, v0

    .line 74
    :goto_0
    return v1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/dropbox/sync/android/ItemSortKeyBase;->mPhotoSortKey:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/sync/android/ItemSortKeyBase;->mPhotoSortKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 71
    if-eqz v0, :cond_1

    move v1, v0

    .line 72
    goto :goto_0

    .line 74
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8
    .local p0, "this":Lcom/dropbox/sync/android/ItemSortKeyBase;, "Lcom/dropbox/sync/android/ItemSortKeyBase<TE;>;"
    check-cast p1, Lcom/dropbox/sync/android/ItemSortKeyBase;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/ItemSortKeyBase;->compareTo(Lcom/dropbox/sync/android/ItemSortKeyBase;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/dropbox/sync/android/ItemSortKeyBase;, "Lcom/dropbox/sync/android/ItemSortKeyBase<TE;>;"
    const/4 v1, 0x0

    .line 55
    instance-of v2, p1, Lcom/dropbox/sync/android/ItemSortKeyBase;

    if-nez v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 58
    check-cast v0, Lcom/dropbox/sync/android/ItemSortKeyBase;

    .line 59
    .local v0, "other":Lcom/dropbox/sync/android/ItemSortKeyBase;
    iget-object v2, p0, Lcom/dropbox/sync/android/ItemSortKeyBase;->mGroupSortKey:Ljava/lang/String;

    iget-object v3, v0, Lcom/dropbox/sync/android/ItemSortKeyBase;->mGroupSortKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dropbox/sync/android/ItemSortKeyBase;->mPhotoSortKey:Ljava/lang/String;

    iget-object v3, v0, Lcom/dropbox/sync/android/ItemSortKeyBase;->mPhotoSortKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getGroupSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/dropbox/sync/android/ItemSortKeyBase;, "Lcom/dropbox/sync/android/ItemSortKeyBase<TE;>;"
    iget-object v0, p0, Lcom/dropbox/sync/android/ItemSortKeyBase;->mGroupSortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcom/dropbox/sync/android/ItemSortKeyBase;, "Lcom/dropbox/sync/android/ItemSortKeyBase<TE;>;"
    iget-object v0, p0, Lcom/dropbox/sync/android/ItemSortKeyBase;->mPhotoSortKey:Ljava/lang/String;

    return-object v0
.end method
