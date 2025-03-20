.class public Lcom/fsck/k9/search/LocalSearch;
.super Ljava/lang/Object;
.source "LocalSearch.java"

# interfaces
.implements Lcom/fsck/k9/search/SearchSpecification;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fsck/k9/search/LocalSearch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountUuids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

.field private mLeafSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/search/ConditionsTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private mManualSearch:Z

.field private mName:Ljava/lang/String;

.field private mPredefined:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 374
    new-instance v0, Lcom/fsck/k9/search/LocalSearch$1;

    invoke-direct {v0}, Lcom/fsck/k9/search/LocalSearch$1;-><init>()V

    sput-object v0, Lcom/fsck/k9/search/LocalSearch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/search/LocalSearch;->mManualSearch:Z

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mAccountUuids:Ljava/util/Set;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mLeafSet:Ljava/util/Set;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v2, p0, Lcom/fsck/k9/search/LocalSearch;->mManualSearch:Z

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mAccountUuids:Ljava/util/Set;

    .line 32
    iput-object v3, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mLeafSet:Ljava/util/Set;

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mName:Ljava/lang/String;

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/fsck/k9/search/LocalSearch;->mPredefined:Z

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/fsck/k9/search/LocalSearch;->mManualSearch:Z

    .line 392
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mAccountUuids:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 393
    const-class v0, Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/search/ConditionsTreeNode;

    iput-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 394
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-nez v0, :cond_2

    move-object v0, v3

    :goto_2
    iput-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mLeafSet:Ljava/util/Set;

    .line 395
    return-void

    :cond_0
    move v0, v2

    .line 390
    goto :goto_0

    :cond_1
    move v1, v2

    .line 391
    goto :goto_1

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-virtual {v0}, Lcom/fsck/k9/search/ConditionsTreeNode;->getLeafSet()Ljava/util/Set;

    move-result-object v0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/search/LocalSearch;->mManualSearch:Z

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mAccountUuids:Ljava/util/Set;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mLeafSet:Ljava/util/Set;

    .line 50
    iput-object p1, p0, Lcom/fsck/k9/search/LocalSearch;->mName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/fsck/k9/search/ConditionsTreeNode;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "searchConditions"    # Lcom/fsck/k9/search/ConditionsTreeNode;
    .param p3, "accounts"    # Ljava/lang/String;
    .param p4, "predefined"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;)V

    .line 65
    iput-object p2, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 66
    iput-boolean p4, p0, Lcom/fsck/k9/search/LocalSearch;->mPredefined:Z

    .line 67
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/search/LocalSearch;->mLeafSet:Ljava/util/Set;

    .line 68
    iget-object v1, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/fsck/k9/search/LocalSearch;->mLeafSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-virtual {v2}, Lcom/fsck/k9/search/ConditionsTreeNode;->getLeafSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_0
    if-eqz p3, :cond_1

    .line 74
    const-string v1, ","

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 75
    .local v0, "account":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/search/LocalSearch;->mAccountUuids:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "account":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addAccountUuid(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v0, "allAccounts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mAccountUuids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mAccountUuids:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addAccountUuids([Ljava/lang/String;)V
    .locals 3
    .param p1, "accountUuids"    # [Ljava/lang/String;

    .prologue
    .line 127
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 128
    .local v0, "acc":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "acc":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public addAllowedFolder(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 244
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->FOLDER:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-direct {v0, v1, v2, p1}, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;-><init>(Lcom/fsck/k9/search/SearchSpecification$SearchField;Lcom/fsck/k9/search/SearchSpecification$Attribute;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fsck/k9/search/LocalSearch;->and(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 245
    return-void
.end method

.method public and(Lcom/fsck/k9/search/ConditionsTreeNode;)Lcom/fsck/k9/search/ConditionsTreeNode;
    .locals 2
    .param p1, "node"    # Lcom/fsck/k9/search/ConditionsTreeNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mLeafSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/fsck/k9/search/ConditionsTreeNode;->getLeafSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-nez v0, :cond_0

    .line 183
    iput-object p1, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 188
    .end local p1    # "node":Lcom/fsck/k9/search/ConditionsTreeNode;
    :goto_0
    return-object p1

    .line 187
    .restart local p1    # "node":Lcom/fsck/k9/search/ConditionsTreeNode;
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/search/ConditionsTreeNode;->and(Lcom/fsck/k9/search/ConditionsTreeNode;)Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 188
    iget-object p1, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    goto :goto_0
.end method

.method public and(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)Lcom/fsck/k9/search/ConditionsTreeNode;
    .locals 3
    .param p1, "condition"    # Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    .prologue
    .line 163
    :try_start_0
    new-instance v1, Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-direct {v1, p1}, Lcom/fsck/k9/search/ConditionsTreeNode;-><init>(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)V

    .line 164
    .local v1, "tmp":Lcom/fsck/k9/search/ConditionsTreeNode;
    invoke-virtual {p0, v1}, Lcom/fsck/k9/search/LocalSearch;->and(Lcom/fsck/k9/search/ConditionsTreeNode;)Lcom/fsck/k9/search/ConditionsTreeNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 167
    .end local v1    # "tmp":Lcom/fsck/k9/search/ConditionsTreeNode;
    :goto_0
    return-object v2

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public and(Lcom/fsck/k9/search/SearchSpecification$SearchField;Ljava/lang/String;Lcom/fsck/k9/search/SearchSpecification$Attribute;)V
    .locals 1
    .param p1, "field"    # Lcom/fsck/k9/search/SearchSpecification$SearchField;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "attribute"    # Lcom/fsck/k9/search/SearchSpecification$Attribute;

    .prologue
    .line 151
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    invoke-direct {v0, p1, p3, p2}, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;-><init>(Lcom/fsck/k9/search/SearchSpecification$SearchField;Lcom/fsck/k9/search/SearchSpecification$Attribute;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fsck/k9/search/LocalSearch;->and(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 152
    return-void
.end method

.method public clone()Lcom/fsck/k9/search/LocalSearch;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v3, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 86
    .local v0, "conditions":Lcom/fsck/k9/search/ConditionsTreeNode;
    :goto_0
    new-instance v1, Lcom/fsck/k9/search/LocalSearch;

    iget-object v3, p0, Lcom/fsck/k9/search/LocalSearch;->mName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/fsck/k9/search/LocalSearch;->mPredefined:Z

    invoke-direct {v1, v3, v0, v2, v4}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;Lcom/fsck/k9/search/ConditionsTreeNode;Ljava/lang/String;Z)V

    .line 87
    .local v1, "copy":Lcom/fsck/k9/search/LocalSearch;
    iget-boolean v2, p0, Lcom/fsck/k9/search/LocalSearch;->mManualSearch:Z

    iput-boolean v2, v1, Lcom/fsck/k9/search/LocalSearch;->mManualSearch:Z

    .line 88
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/fsck/k9/search/LocalSearch;->mAccountUuids:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/fsck/k9/search/LocalSearch;->mAccountUuids:Ljava/util/Set;

    .line 90
    return-object v1

    .line 84
    .end local v0    # "conditions":Lcom/fsck/k9/search/ConditionsTreeNode;
    .end local v1    # "copy":Lcom/fsck/k9/search/LocalSearch;
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-virtual {v3}, Lcom/fsck/k9/search/ConditionsTreeNode;->cloneTree()Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/fsck/k9/search/LocalSearch;->clone()Lcom/fsck/k9/search/LocalSearch;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountUuids()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 329
    iget-object v1, p0, Lcom/fsck/k9/search/LocalSearch;->mAccountUuids:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "allAccounts"

    aput-object v2, v0, v1

    .line 335
    :goto_0
    return-object v0

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/search/LocalSearch;->mAccountUuids:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 334
    .local v0, "tmp":[Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/search/LocalSearch;->mAccountUuids:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public getConditions()Lcom/fsck/k9/search/ConditionsTreeNode;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    return-object v0
.end method

.method public getFolderNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fsck/k9/search/LocalSearch;->mLeafSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 255
    .local v0, "node":Lcom/fsck/k9/search/ConditionsTreeNode;
    iget-object v3, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mCondition:Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    iget-object v3, v3, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->field:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v4, Lcom/fsck/k9/search/SearchSpecification$SearchField;->FOLDER:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mCondition:Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    iget-object v3, v3, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->attribute:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    sget-object v4, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    if-ne v3, v4, :cond_0

    .line 257
    iget-object v3, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mCondition:Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    iget-object v3, v3, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->value:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    .end local v0    # "node":Lcom/fsck/k9/search/ConditionsTreeNode;
    :cond_1
    return-object v1
.end method

.method public getLeafSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/search/ConditionsTreeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mLeafSet:Ljava/util/Set;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRemoteSearchArguments()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-virtual {p0}, Lcom/fsck/k9/search/LocalSearch;->getLeafSet()Ljava/util/Set;

    move-result-object v0

    .line 281
    .local v0, "leafSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/search/ConditionsTreeNode;>;"
    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-object v2

    .line 285
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 286
    .local v1, "node":Lcom/fsck/k9/search/ConditionsTreeNode;
    invoke-virtual {v1}, Lcom/fsck/k9/search/ConditionsTreeNode;->getCondition()Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    move-result-object v4

    iget-object v4, v4, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->field:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v5, Lcom/fsck/k9/search/SearchSpecification$SearchField;->SUBJECT:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    if-eq v4, v5, :cond_3

    .line 287
    invoke-virtual {v1}, Lcom/fsck/k9/search/ConditionsTreeNode;->getCondition()Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    move-result-object v4

    iget-object v4, v4, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->field:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v5, Lcom/fsck/k9/search/SearchSpecification$SearchField;->SENDER:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    if-ne v4, v5, :cond_2

    .line 288
    :cond_3
    invoke-virtual {v1}, Lcom/fsck/k9/search/ConditionsTreeNode;->getCondition()Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    move-result-object v2

    iget-object v2, v2, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public isManualSearch()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/fsck/k9/search/LocalSearch;->mManualSearch:Z

    return v0
.end method

.method public isPredefined()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/fsck/k9/search/LocalSearch;->mPredefined:Z

    return v0
.end method

.method public or(Lcom/fsck/k9/search/ConditionsTreeNode;)Lcom/fsck/k9/search/ConditionsTreeNode;
    .locals 2
    .param p1, "node"    # Lcom/fsck/k9/search/ConditionsTreeNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mLeafSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/fsck/k9/search/ConditionsTreeNode;->getLeafSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 219
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-nez v0, :cond_0

    .line 220
    iput-object p1, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 225
    .end local p1    # "node":Lcom/fsck/k9/search/ConditionsTreeNode;
    :goto_0
    return-object p1

    .line 224
    .restart local p1    # "node":Lcom/fsck/k9/search/ConditionsTreeNode;
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/search/ConditionsTreeNode;->or(Lcom/fsck/k9/search/ConditionsTreeNode;)Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 225
    iget-object p1, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    goto :goto_0
.end method

.method public or(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)Lcom/fsck/k9/search/ConditionsTreeNode;
    .locals 3
    .param p1, "condition"    # Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    .prologue
    .line 200
    :try_start_0
    new-instance v1, Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-direct {v1, p1}, Lcom/fsck/k9/search/ConditionsTreeNode;-><init>(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)V

    .line 201
    .local v1, "tmp":Lcom/fsck/k9/search/ConditionsTreeNode;
    invoke-virtual {p0, v1}, Lcom/fsck/k9/search/LocalSearch;->or(Lcom/fsck/k9/search/ConditionsTreeNode;)Lcom/fsck/k9/search/ConditionsTreeNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 204
    .end local v1    # "tmp":Lcom/fsck/k9/search/ConditionsTreeNode;
    :goto_0
    return-object v2

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeAccountUuid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mAccountUuids:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public searchAllAccounts()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mAccountUuids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setManualSearch(Z)V
    .locals 0
    .param p1, "manualSearch"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/fsck/k9/search/LocalSearch;->mManualSearch:Z

    .line 319
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/fsck/k9/search/LocalSearch;->mName:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 367
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    iget-boolean v0, p0, Lcom/fsck/k9/search/LocalSearch;->mPredefined:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 369
    iget-boolean v0, p0, Lcom/fsck/k9/search/LocalSearch;->mManualSearch:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fsck/k9/search/LocalSearch;->mAccountUuids:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 371
    iget-object v0, p0, Lcom/fsck/k9/search/LocalSearch;->mConditions:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 372
    return-void

    :cond_0
    move v0, v2

    .line 368
    goto :goto_0

    :cond_1
    move v1, v2

    .line 369
    goto :goto_1
.end method
