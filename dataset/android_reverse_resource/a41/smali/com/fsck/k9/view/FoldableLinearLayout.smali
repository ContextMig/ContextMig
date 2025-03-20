.class public Lcom/fsck/k9/view/FoldableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "FoldableLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;
    }
.end annotation


# instance fields
.field private mFoldableContainer:Landroid/widget/LinearLayout;

.field private mFoldableIcon:Landroid/widget/ImageView;

.field private mFoldableLayout:Landroid/view/View;

.field private mFoldableTextView:Landroid/widget/TextView;

.field private mFoldedLabel:Ljava/lang/String;

.field private mHasMigrated:Z

.field private mIconActionCollapseId:I

.field private mIconActionExpandId:I

.field private mIsFolded:Z

.field private mShortAnimationDuration:Ljava/lang/Integer;

.field private mUnFoldedLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mIsFolded:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mHasMigrated:Z

    .line 39
    iput-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mShortAnimationDuration:Ljava/lang/Integer;

    .line 40
    iput-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableTextView:Landroid/widget/TextView;

    .line 41
    iput-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableLayout:Landroid/view/View;

    .line 50
    invoke-direct {p0, p1, v1}, Lcom/fsck/k9/view/FoldableLinearLayout;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mIsFolded:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mHasMigrated:Z

    .line 39
    iput-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mShortAnimationDuration:Ljava/lang/Integer;

    .line 40
    iput-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableTextView:Landroid/widget/TextView;

    .line 41
    iput-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableLayout:Landroid/view/View;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/view/FoldableLinearLayout;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mIsFolded:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mHasMigrated:Z

    .line 39
    iput-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mShortAnimationDuration:Ljava/lang/Integer;

    .line 40
    iput-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableTextView:Landroid/widget/TextView;

    .line 41
    iput-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableLayout:Landroid/view/View;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/view/FoldableLinearLayout;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method static synthetic access$300(Lcom/fsck/k9/view/FoldableLinearLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/view/FoldableLinearLayout;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mIsFolded:Z

    return v0
.end method

.method static synthetic access$302(Lcom/fsck/k9/view/FoldableLinearLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/view/FoldableLinearLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mIsFolded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/fsck/k9/view/FoldableLinearLayout;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/view/FoldableLinearLayout;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initialiseInnerViews()V
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableLayout:Landroid/view/View;

    const v2, 0x7f0c006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableIcon:Landroid/widget/ImageView;

    .line 185
    iget-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableLayout:Landroid/view/View;

    const v2, 0x7f0c006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableTextView:Landroid/widget/TextView;

    .line 186
    iget-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldedLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {p0}, Lcom/fsck/k9/view/FoldableLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mShortAnimationDuration:Ljava/lang/Integer;

    .line 189
    iget-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableLayout:Landroid/view/View;

    const v2, 0x7f0c006c

    .line 190
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 191
    .local v0, "foldableControl":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/fsck/k9/view/FoldableLinearLayout$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/view/FoldableLinearLayout$1;-><init>(Lcom/fsck/k9/view/FoldableLinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    return-void
.end method

.method private migrateChildrenToContainer()V
    .locals 6

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/fsck/k9/view/FoldableLinearLayout;->getChildCount()I

    move-result v0

    .line 164
    .local v0, "childNum":I
    new-array v1, v0, [Landroid/view/View;

    .line 165
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 166
    invoke-virtual {p0, v2}, Lcom/fsck/k9/view/FoldableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v1, v2

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_0
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0c006c

    if-ne v4, v5, :cond_1

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/view/FoldableLinearLayout;->detachAllViewsFromParent()V

    .line 173
    invoke-virtual {p0}, Lcom/fsck/k9/view/FoldableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 175
    .local v3, "inflator":Landroid/view/LayoutInflater;
    const v4, 0x7f030019

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableLayout:Landroid/view/View;

    .line 176
    iget-object v4, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableLayout:Landroid/view/View;

    const v5, 0x7f0c006f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    .line 178
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 179
    aget-object v4, v1, v2

    invoke-virtual {p0, v4}, Lcom/fsck/k9/view/FoldableLinearLayout;->addView(Landroid/view/View;)V

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 181
    :cond_2
    return-void
.end method

.method private processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 71
    .local v3, "theme":Landroid/content/res/Resources$Theme;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 72
    .local v2, "outValue":Landroid/util/TypedValue;
    const v4, 0x7f010028

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 73
    .local v1, "found":Z
    if-eqz v1, :cond_0

    .line 74
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    iput v4, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mIconActionCollapseId:I

    .line 76
    :cond_0
    const v4, 0x7f010027

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    iput v4, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mIconActionExpandId:I

    .line 80
    :cond_1
    if-eqz p2, :cond_2

    .line 81
    sget-object v4, Lcom/fsck/k9/R$styleable;->FoldableLinearLayout:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldedLabel:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mUnFoldedLabel:Ljava/lang/String;

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    iget-object v4, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldedLabel:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, "No text!"

    :goto_0
    iput-object v4, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldedLabel:Ljava/lang/String;

    .line 89
    iget-object v4, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mUnFoldedLabel:Ljava/lang/String;

    if-nez v4, :cond_4

    const-string v4, "No text!"

    :goto_1
    iput-object v4, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mUnFoldedLabel:Ljava/lang/String;

    .line 90
    return-void

    .line 88
    :cond_3
    iget-object v4, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldedLabel:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_4
    iget-object v4, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mUnFoldedLabel:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mHasMigrated:Z

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/fsck/k9/view/FoldableLinearLayout;->migrateChildrenToContainer()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mHasMigrated:Z

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/view/FoldableLinearLayout;->initialiseInnerViews()V

    .line 101
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 102
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 114
    instance-of v1, p1, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 115
    check-cast v0, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;

    .line 116
    .local v0, "savedState":Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;
    invoke-virtual {v0}, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 117
    invoke-static {v0}, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;->access$100(Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mIsFolded:Z

    .line 118
    iget-boolean v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mIsFolded:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/view/FoldableLinearLayout;->updateFoldedState(ZZ)V

    .line 122
    .end local v0    # "savedState":Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 107
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;-><init>(Landroid/os/Parcelable;Lcom/fsck/k9/view/FoldableLinearLayout$1;)V

    .line 108
    .local v0, "savedState":Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;
    iget-boolean v2, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mIsFolded:Z

    invoke-static {v0, v2}, Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;->access$102(Lcom/fsck/k9/view/FoldableLinearLayout$SavedState;Z)Z

    .line 109
    return-object v0
.end method

.method protected updateFoldedState(ZZ)V
    .locals 5
    .param p1, "newStateIsFolded"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 201
    if-eqz p1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mIconActionExpandId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    if-eqz p2, :cond_0

    .line 204
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 205
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    iget-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mShortAnimationDuration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 206
    new-instance v1, Lcom/fsck/k9/view/FoldableLinearLayout$2;

    invoke-direct {v1, p0}, Lcom/fsck/k9/view/FoldableLinearLayout$2;-><init>(Lcom/fsck/k9/view/FoldableLinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 227
    iget-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 231
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldedLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :goto_1
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mIconActionCollapseId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    iget-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    if-eqz p2, :cond_2

    .line 236
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 237
    .restart local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    iget-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mShortAnimationDuration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 238
    iget-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mFoldableTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fsck/k9/view/FoldableLinearLayout;->mUnFoldedLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
