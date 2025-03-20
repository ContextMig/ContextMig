.class public Lcom/fsck/k9/search/ConditionsTreeNode;
.super Ljava/lang/Object;
.source "ConditionsTreeNode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/search/ConditionsTreeNode$Operator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fsck/k9/search/ConditionsTreeNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCondition:Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

.field public mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

.field public mLeftMPTTMarker:I

.field public mParent:Lcom/fsck/k9/search/ConditionsTreeNode;

.field public mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

.field public mRightMPTTMarker:I

.field public mValue:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 404
    new-instance v0, Lcom/fsck/k9/search/ConditionsTreeNode$1;

    invoke-direct {v0}, Lcom/fsck/k9/search/ConditionsTreeNode$1;-><init>()V

    sput-object v0, Lcom/fsck/k9/search/ConditionsTreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    invoke-static {}, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->values()[Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mValue:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    .line 420
    const-class v0, Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    iput-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mCondition:Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    .line 421
    const-class v0, Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/search/ConditionsTreeNode;

    iput-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 422
    const-class v0, Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/search/ConditionsTreeNode;

    iput-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mParent:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 425
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    iput-object p0, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mParent:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    iput-object p0, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mParent:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 432
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/fsck/k9/search/ConditionsTreeNode$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/fsck/k9/search/ConditionsTreeNode$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/fsck/k9/search/ConditionsTreeNode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/search/ConditionsTreeNode;Lcom/fsck/k9/search/ConditionsTreeNode$Operator;)V
    .locals 1
    .param p1, "parent"    # Lcom/fsck/k9/search/ConditionsTreeNode;
    .param p2, "op"    # Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mParent:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 124
    iput-object p2, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mValue:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mCondition:Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)V
    .locals 1
    .param p1, "condition"    # Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mParent:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 118
    iput-object p1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mCondition:Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    .line 119
    sget-object v0, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->CONDITION:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    iput-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mValue:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    .line 120
    return-void
.end method

.method private add(Lcom/fsck/k9/search/ConditionsTreeNode;Lcom/fsck/k9/search/ConditionsTreeNode$Operator;)Lcom/fsck/k9/search/ConditionsTreeNode;
    .locals 3
    .param p1, "node"    # Lcom/fsck/k9/search/ConditionsTreeNode;
    .param p2, "op"    # Lcom/fsck/k9/search/ConditionsTreeNode$Operator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v1, p1, Lcom/fsck/k9/search/ConditionsTreeNode;->mParent:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-eqz v1, :cond_0

    .line 302
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Can only add new expressions from root node down."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_0
    new-instance v0, Lcom/fsck/k9/search/ConditionsTreeNode;

    iget-object v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mParent:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-direct {v0, v1, p2}, Lcom/fsck/k9/search/ConditionsTreeNode;-><init>(Lcom/fsck/k9/search/ConditionsTreeNode;Lcom/fsck/k9/search/ConditionsTreeNode$Operator;)V

    .line 306
    .local v0, "tmpNode":Lcom/fsck/k9/search/ConditionsTreeNode;
    iput-object p0, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 307
    iput-object p1, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 309
    iget-object v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mParent:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mParent:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-direct {v1, p0, v0}, Lcom/fsck/k9/search/ConditionsTreeNode;->updateChild(Lcom/fsck/k9/search/ConditionsTreeNode;Lcom/fsck/k9/search/ConditionsTreeNode;)V

    .line 313
    :cond_1
    iput-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mParent:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 314
    iput-object v0, p1, Lcom/fsck/k9/search/ConditionsTreeNode;->mParent:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 316
    return-object v0
.end method

.method private applyMPTTLabel(I)I
    .locals 1
    .param p1, "label"    # I

    .prologue
    .line 369
    iput p1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeftMPTTMarker:I

    .line 371
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v0, p1}, Lcom/fsck/k9/search/ConditionsTreeNode;->applyMPTTLabel(I)I

    move-result p1

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v0, p1}, Lcom/fsck/k9/search/ConditionsTreeNode;->applyMPTTLabel(I)I

    move-result p1

    .line 379
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 380
    iput p1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRightMPTTMarker:I

    .line 381
    return p1
.end method

.method private static buildNodeFromRow(Landroid/database/Cursor;)Lcom/fsck/k9/search/ConditionsTreeNode;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "result":Lcom/fsck/k9/search/ConditionsTreeNode;
    const/4 v0, 0x0

    .line 97
    .local v0, "condition":Lcom/fsck/k9/search/SearchSpecification$SearchCondition;
    const/4 v3, 0x5

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    move-result-object v2

    .line 99
    .local v2, "tmpValue":Lcom/fsck/k9/search/ConditionsTreeNode$Operator;
    sget-object v3, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->CONDITION:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    if-ne v2, v3, :cond_0

    .line 100
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    .end local v0    # "condition":Lcom/fsck/k9/search/SearchSpecification$SearchCondition;
    const/4 v3, 0x0

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/search/SearchSpecification$SearchField;

    move-result-object v3

    const/4 v4, 0x2

    .line 101
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/search/SearchSpecification$Attribute;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/search/SearchSpecification$Attribute;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;-><init>(Lcom/fsck/k9/search/SearchSpecification$SearchField;Lcom/fsck/k9/search/SearchSpecification$Attribute;Ljava/lang/String;)V

    .line 104
    .restart local v0    # "condition":Lcom/fsck/k9/search/SearchSpecification$SearchCondition;
    :cond_0
    new-instance v1, Lcom/fsck/k9/search/ConditionsTreeNode;

    .end local v1    # "result":Lcom/fsck/k9/search/ConditionsTreeNode;
    invoke-direct {v1, v0}, Lcom/fsck/k9/search/ConditionsTreeNode;-><init>(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)V

    .line 105
    .restart local v1    # "result":Lcom/fsck/k9/search/ConditionsTreeNode;
    iput-object v2, v1, Lcom/fsck/k9/search/ConditionsTreeNode;->mValue:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    .line 106
    const/4 v3, 0x3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeftMPTTMarker:I

    .line 107
    const/4 v3, 0x4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/fsck/k9/search/ConditionsTreeNode;->mRightMPTTMarker:I

    .line 109
    return-object v1
.end method

.method public static buildTreeFromDB(Landroid/database/Cursor;)Lcom/fsck/k9/search/ConditionsTreeNode;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 62
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 63
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/fsck/k9/search/ConditionsTreeNode;>;"
    const/4 v1, 0x0

    .line 66
    .local v1, "tmp":Lcom/fsck/k9/search/ConditionsTreeNode;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-static {p0}, Lcom/fsck/k9/search/ConditionsTreeNode;->buildNodeFromRow(Landroid/database/Cursor;)Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    invoke-static {p0}, Lcom/fsck/k9/search/ConditionsTreeNode;->buildNodeFromRow(Landroid/database/Cursor;)Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v1

    .line 74
    iget v3, v1, Lcom/fsck/k9/search/ConditionsTreeNode;->mRightMPTTMarker:I

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/search/ConditionsTreeNode;

    iget v2, v2, Lcom/fsck/k9/search/ConditionsTreeNode;->mRightMPTTMarker:I

    if-ge v3, v2, :cond_1

    .line 75
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/search/ConditionsTreeNode;

    iput-object v1, v2, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/search/ConditionsTreeNode;

    iget v2, v2, Lcom/fsck/k9/search/ConditionsTreeNode;->mRightMPTTMarker:I

    iget v3, v1, Lcom/fsck/k9/search/ConditionsTreeNode;->mRightMPTTMarker:I

    if-ge v2, v3, :cond_2

    .line 79
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/search/ConditionsTreeNode;

    iput-object v1, v2, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    goto :goto_0

    .line 84
    :cond_3
    return-object v1
.end method

.method private cloneNode(Lcom/fsck/k9/search/ConditionsTreeNode;)Lcom/fsck/k9/search/ConditionsTreeNode;
    .locals 3
    .param p1, "parent"    # Lcom/fsck/k9/search/ConditionsTreeNode;

    .prologue
    const/4 v2, 0x0

    .line 146
    new-instance v0, Lcom/fsck/k9/search/ConditionsTreeNode;

    iget-object v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mValue:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    invoke-direct {v0, p1, v1}, Lcom/fsck/k9/search/ConditionsTreeNode;-><init>(Lcom/fsck/k9/search/ConditionsTreeNode;Lcom/fsck/k9/search/ConditionsTreeNode$Operator;)V

    .line 148
    .local v0, "copy":Lcom/fsck/k9/search/ConditionsTreeNode;
    iget-object v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mCondition:Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->clone()Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    move-result-object v1

    iput-object v1, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mCondition:Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    .line 149
    iget v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeftMPTTMarker:I

    iput v1, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeftMPTTMarker:I

    .line 150
    iget v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRightMPTTMarker:I

    iput v1, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRightMPTTMarker:I

    .line 152
    iget-object v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 153
    iget-object v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-nez v1, :cond_1

    :goto_1
    iput-object v2, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 155
    return-object v0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-direct {v1, v0}, Lcom/fsck/k9/search/ConditionsTreeNode;->cloneNode(Lcom/fsck/k9/search/ConditionsTreeNode;)Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v1

    goto :goto_0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-direct {v1, v0}, Lcom/fsck/k9/search/ConditionsTreeNode;->cloneNode(Lcom/fsck/k9/search/ConditionsTreeNode;)Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v2

    goto :goto_1
.end method

.method private getLeafSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/search/ConditionsTreeNode;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/search/ConditionsTreeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "leafSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/search/ConditionsTreeNode;>;"
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-nez v0, :cond_1

    .line 346
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_0
    :goto_0
    return-object p1

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-direct {v0, p1}, Lcom/fsck/k9/search/ConditionsTreeNode;->getLeafSet(Ljava/util/Set;)Ljava/util/Set;

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-direct {v0, p1}, Lcom/fsck/k9/search/ConditionsTreeNode;->getLeafSet(Ljava/util/Set;)Ljava/util/Set;

    goto :goto_0
.end method

.method private updateChild(Lcom/fsck/k9/search/ConditionsTreeNode;Lcom/fsck/k9/search/ConditionsTreeNode;)V
    .locals 1
    .param p1, "oldChild"    # Lcom/fsck/k9/search/ConditionsTreeNode;
    .param p2, "newChild"    # Lcom/fsck/k9/search/ConditionsTreeNode;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-ne v0, p1, :cond_1

    .line 330
    iput-object p2, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-ne v0, p1, :cond_0

    .line 332
    iput-object p2, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    goto :goto_0
.end method


# virtual methods
.method public and(Lcom/fsck/k9/search/ConditionsTreeNode;)Lcom/fsck/k9/search/ConditionsTreeNode;
    .locals 1
    .param p1, "expr"    # Lcom/fsck/k9/search/ConditionsTreeNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 170
    sget-object v0, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->AND:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/search/ConditionsTreeNode;->add(Lcom/fsck/k9/search/ConditionsTreeNode;Lcom/fsck/k9/search/ConditionsTreeNode$Operator;)Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public and(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)Lcom/fsck/k9/search/ConditionsTreeNode;
    .locals 3
    .param p1, "condition"    # Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    .prologue
    .line 183
    :try_start_0
    new-instance v1, Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-direct {v1, p1}, Lcom/fsck/k9/search/ConditionsTreeNode;-><init>(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)V

    .line 184
    .local v1, "tmp":Lcom/fsck/k9/search/ConditionsTreeNode;
    invoke-virtual {p0, v1}, Lcom/fsck/k9/search/ConditionsTreeNode;->and(Lcom/fsck/k9/search/ConditionsTreeNode;)Lcom/fsck/k9/search/ConditionsTreeNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 187
    .end local v1    # "tmp":Lcom/fsck/k9/search/ConditionsTreeNode;
    :goto_0
    return-object v2

    .line 185
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public applyMPTTLabel()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fsck/k9/search/ConditionsTreeNode;->applyMPTTLabel(I)I

    .line 230
    return-void
.end method

.method cloneTree()Lcom/fsck/k9/search/ConditionsTreeNode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mParent:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t call cloneTree() for a non-root node"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_0
    new-instance v0, Lcom/fsck/k9/search/ConditionsTreeNode;

    iget-object v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mCondition:Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->clone()Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fsck/k9/search/ConditionsTreeNode;-><init>(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)V

    .line 136
    .local v0, "copy":Lcom/fsck/k9/search/ConditionsTreeNode;
    iget v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeftMPTTMarker:I

    iput v1, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeftMPTTMarker:I

    .line 137
    iget v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRightMPTTMarker:I

    iput v1, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRightMPTTMarker:I

    .line 139
    iget-object v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-nez v1, :cond_1

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 140
    iget-object v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-nez v1, :cond_2

    :goto_1
    iput-object v2, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 142
    return-object v0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-direct {v1, v0}, Lcom/fsck/k9/search/ConditionsTreeNode;->cloneNode(Lcom/fsck/k9/search/ConditionsTreeNode;)Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v1

    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-direct {v1, v0}, Lcom/fsck/k9/search/ConditionsTreeNode;->cloneNode(Lcom/fsck/k9/search/ConditionsTreeNode;)Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v2

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public getCondition()Lcom/fsck/k9/search/SearchSpecification$SearchCondition;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mCondition:Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    return-object v0
.end method

.method public getLeafSet()Ljava/util/Set;
    .locals 2
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
    .line 249
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 250
    .local v0, "leafSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/search/ConditionsTreeNode;>;"
    invoke-direct {p0, v0}, Lcom/fsck/k9/search/ConditionsTreeNode;->getLeafSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public or(Lcom/fsck/k9/search/ConditionsTreeNode;)Lcom/fsck/k9/search/ConditionsTreeNode;
    .locals 1
    .param p1, "expr"    # Lcom/fsck/k9/search/ConditionsTreeNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    sget-object v0, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->OR:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/search/ConditionsTreeNode;->add(Lcom/fsck/k9/search/ConditionsTreeNode;Lcom/fsck/k9/search/ConditionsTreeNode$Operator;)Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)Lcom/fsck/k9/search/ConditionsTreeNode;
    .locals 3
    .param p1, "condition"    # Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    .prologue
    .line 213
    :try_start_0
    new-instance v1, Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-direct {v1, p1}, Lcom/fsck/k9/search/ConditionsTreeNode;-><init>(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)V

    .line 214
    .local v1, "tmp":Lcom/fsck/k9/search/ConditionsTreeNode;
    invoke-virtual {p0, v1}, Lcom/fsck/k9/search/ConditionsTreeNode;->or(Lcom/fsck/k9/search/ConditionsTreeNode;)Lcom/fsck/k9/search/ConditionsTreeNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 217
    .end local v1    # "tmp":Lcom/fsck/k9/search/ConditionsTreeNode;
    :goto_0
    return-object v2

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public preorder()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/search/ConditionsTreeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/search/ConditionsTreeNode;>;"
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 262
    .local v2, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/fsck/k9/search/ConditionsTreeNode;>;"
    invoke-virtual {v2, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :goto_0
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 265
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 267
    .local v0, "current":Lcom/fsck/k9/search/ConditionsTreeNode;
    iget-object v3, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-eqz v3, :cond_0

    .line 268
    iget-object v3, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_0
    iget-object v3, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-eqz v3, :cond_1

    .line 272
    iget-object v3, v0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    .end local v0    # "current":Lcom/fsck/k9/search/ConditionsTreeNode;
    :cond_2
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mValue:Lcom/fsck/k9/search/ConditionsTreeNode$Operator;

    invoke-virtual {v0}, Lcom/fsck/k9/search/ConditionsTreeNode$Operator;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mCondition:Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 400
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mLeft:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 401
    iget-object v0, p0, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 402
    return-void
.end method
