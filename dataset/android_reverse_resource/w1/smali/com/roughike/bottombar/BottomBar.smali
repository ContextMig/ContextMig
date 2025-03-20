.class public Lcom/roughike/bottombar/BottomBar;
.super Landroid/widget/RelativeLayout;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final ANIMATION_DURATION:J = 0x96L

.field private static final STATE_BADGE_STATES_BUNDLE:Ljava/lang/String; = "STATE_BADGE_STATES_BUNDLE"

.field private static final STATE_CURRENT_SELECTED_TAB:Ljava/lang/String; = "STATE_CURRENT_SELECTED_TAB"

.field private static final TAG_BADGE:Ljava/lang/String; = "BOTTOMBAR_BADGE_"

.field private static final TAG_BOTTOM_BAR_VIEW_ACTIVE:Ljava/lang/String; = "BOTTOM_BAR_VIEW_ACTIVE"

.field private static final TAG_BOTTOM_BAR_VIEW_INACTIVE:Ljava/lang/String; = "BOTTOM_BAR_VIEW_INACTIVE"


# instance fields
.field private mActiveShiftingItemWidth:I

.field private mBackgroundOverlay:Landroid/view/View;

.field private mBackgroundView:Landroid/view/View;

.field private mBadgeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mBadgeStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mColorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentBackgroundColor:I

.field private mCurrentTabPosition:I

.field private mCustomActiveTabColor:I

.field private mDarkBackgroundColor:Ljava/lang/Integer;

.field private mDefaultBackgroundColor:I

.field private mDrawBehindNavBar:Z

.field private mEightDp:I

.field private mFragmentContainer:I

.field private mFragmentManager:Ljava/lang/Object;

.field private mIgnoreNightMode:Z

.field private mIgnoreScalingResize:Z

.field private mIgnoreShiftingResize:Z

.field private mIgnoreTabletLayout:Z

.field private mInActiveColor:Ljava/lang/Integer;

.field private mInActiveShiftingItemWidth:I

.field private mIsComingFromRestoredState:Z

.field private mIsDarkTheme:Z

.field private mIsShiftingMode:Z

.field private mIsShy:Z

.field private mIsTabletMode:Z

.field private mItemContainer:Landroid/view/ViewGroup;

.field private mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

.field private mListener:Ljava/lang/Object;

.field private mMaxFixedItemWidth:I

.field private mMaxFixedTabCount:I

.field private mMaxInActiveShiftingItemWidth:I

.field private mMenuListener:Ljava/lang/Object;

.field private mOuterContainer:Landroid/view/ViewGroup;

.field private mPendingTextAppearance:I

.field private mPendingTypeface:Landroid/graphics/Typeface;

.field private mPendingUserContentView:Landroid/view/View;

.field private mPrimaryColor:Ljava/lang/Integer;

.field private mScreenWidth:I

.field private mShadowView:Landroid/view/View;

.field private mShouldUpdateFragmentInitially:Z

.field private mShyHeightAlreadyCalculated:Z

.field private mSixDp:I

.field private mSixteenDp:I

.field private mTabAlpha:F

.field private mTabletRightBorder:Landroid/view/View;

.field private mTenDp:I

.field private mUseExtraOffset:Z

.field private mUseOnlyStatusBarOffset:Z

.field private mUseTopOffset:Z

.field private mUserContentContainer:Landroid/view/ViewGroup;

.field private mWhiteColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 957
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 88
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mTabAlpha:F

    .line 124
    iput-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mDrawBehindNavBar:Z

    .line 125
    iput-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mUseTopOffset:Z

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mPendingTextAppearance:I

    .line 134
    const/4 v0, 0x3

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mMaxFixedTabCount:I

    .line 958
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/roughike/bottombar/BottomBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 959
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIF)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundColor"    # I
    .param p3, "activeColor"    # I
    .param p4, "alpha"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 962
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 88
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mTabAlpha:F

    .line 124
    iput-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mDrawBehindNavBar:Z

    .line 125
    iput-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mUseTopOffset:Z

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mPendingTextAppearance:I

    .line 134
    const/4 v0, 0x3

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mMaxFixedTabCount:I

    .line 963
    iput p4, p0, Lcom/roughike/bottombar/BottomBar;->mTabAlpha:F

    .line 964
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mWhiteColor:Ljava/lang/Integer;

    .line 965
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mPrimaryColor:Ljava/lang/Integer;

    .line 966
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/roughike/bottombar/BottomBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 967
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 970
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mTabAlpha:F

    .line 124
    iput-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mDrawBehindNavBar:Z

    .line 125
    iput-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mUseTopOffset:Z

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mPendingTextAppearance:I

    .line 134
    const/4 v0, 0x3

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mMaxFixedTabCount:I

    .line 971
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/roughike/bottombar/BottomBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 972
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x1

    .line 975
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mTabAlpha:F

    .line 124
    iput-boolean v1, p0, Lcom/roughike/bottombar/BottomBar;->mDrawBehindNavBar:Z

    .line 125
    iput-boolean v1, p0, Lcom/roughike/bottombar/BottomBar;->mUseTopOffset:Z

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mPendingTextAppearance:I

    .line 134
    const/4 v0, 0x3

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mMaxFixedTabCount:I

    .line 976
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/roughike/bottombar/BottomBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 977
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 981
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mTabAlpha:F

    .line 124
    iput-boolean v1, p0, Lcom/roughike/bottombar/BottomBar;->mDrawBehindNavBar:Z

    .line 125
    iput-boolean v1, p0, Lcom/roughike/bottombar/BottomBar;->mUseTopOffset:Z

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mPendingTextAppearance:I

    .line 134
    const/4 v0, 0x3

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mMaxFixedTabCount:I

    .line 982
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/roughike/bottombar/BottomBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 983
    return-void
.end method

.method static synthetic access$000(Lcom/roughike/bottombar/BottomBar;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/roughike/bottombar/BottomBar;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->handleClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/roughike/bottombar/BottomBar;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/roughike/bottombar/BottomBar;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->handleLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/roughike/bottombar/BottomBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/roughike/bottombar/BottomBar;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/roughike/bottombar/BottomBar;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/roughike/bottombar/BottomBar;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mOuterContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/roughike/bottombar/BottomBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/roughike/bottombar/BottomBar;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mShyHeightAlreadyCalculated:Z

    return v0
.end method

.method public static attach(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/roughike/bottombar/BottomBar;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 147
    new-instance v0, Lcom/roughike/bottombar/BottomBar;

    invoke-direct {v0, p0}, Lcom/roughike/bottombar/BottomBar;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "bottomBar":Lcom/roughike/bottombar/BottomBar;
    invoke-direct {v0, p1}, Lcom/roughike/bottombar/BottomBar;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 150
    const v3, 0x1020002

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 151
    .local v1, "contentView":Landroid/view/ViewGroup;
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 152
    .local v2, "oldLayout":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    invoke-direct {v0, v2}, Lcom/roughike/bottombar/BottomBar;->setPendingUserContentView(Landroid/view/View;)V

    .line 155
    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 157
    return-object v0
.end method

.method public static attach(Landroid/app/Activity;Landroid/os/Bundle;IIF)Lcom/roughike/bottombar/BottomBar;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "backgroundColor"    # I
    .param p3, "activeIconColor"    # I
    .param p4, "alpha"    # F

    .prologue
    const/4 v4, 0x0

    .line 161
    new-instance v0, Lcom/roughike/bottombar/BottomBar;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/roughike/bottombar/BottomBar;-><init>(Landroid/content/Context;IIF)V

    .line 162
    .local v0, "bottomBar":Lcom/roughike/bottombar/BottomBar;
    invoke-direct {v0, p1}, Lcom/roughike/bottombar/BottomBar;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 164
    const v3, 0x1020002

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 165
    .local v1, "contentView":Landroid/view/ViewGroup;
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 166
    .local v2, "oldLayout":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 168
    invoke-direct {v0, v2}, Lcom/roughike/bottombar/BottomBar;->setPendingUserContentView(Landroid/view/View;)V

    .line 169
    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 171
    return-object v0
.end method

.method public static attach(Landroid/view/View;Landroid/os/Bundle;)Lcom/roughike/bottombar/BottomBar;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 191
    new-instance v0, Lcom/roughike/bottombar/BottomBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/roughike/bottombar/BottomBar;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "bottomBar":Lcom/roughike/bottombar/BottomBar;
    invoke-direct {v0, p1}, Lcom/roughike/bottombar/BottomBar;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 196
    .local v1, "contentView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 198
    .local v2, "oldLayout":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 200
    invoke-direct {v0, v2}, Lcom/roughike/bottombar/BottomBar;->setPendingUserContentView(Landroid/view/View;)V

    .line 201
    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 206
    .end local v2    # "oldLayout":Landroid/view/View;
    :goto_0
    return-object v0

    .line 203
    :cond_0
    invoke-direct {v0, p0}, Lcom/roughike/bottombar/BottomBar;->setPendingUserContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static attachShy(Landroid/support/design/widget/CoordinatorLayout;Landroid/os/Bundle;)Lcom/roughike/bottombar/BottomBar;
    .locals 1
    .param p0, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/roughike/bottombar/BottomBar;->attachShy(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Bundle;)Lcom/roughike/bottombar/BottomBar;

    move-result-object v0

    return-object v0
.end method

.method public static attachShy(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Bundle;)Lcom/roughike/bottombar/BottomBar;
    .locals 3
    .param p0, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p1, "userContentView"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    new-instance v0, Lcom/roughike/bottombar/BottomBar;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roughike/bottombar/BottomBar;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, "bottomBar":Lcom/roughike/bottombar/BottomBar;
    invoke-direct {v0, p2}, Lcom/roughike/bottombar/BottomBar;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 234
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/roughike/bottombar/BottomBar;->toughChildHood(Z)V

    .line 236
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/roughike/bottombar/R$bool;->bb_bottom_bar_is_tablet_mode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-direct {v0, p1}, Lcom/roughike/bottombar/BottomBar;->setPendingUserContentView(Landroid/view/View;)V

    .line 241
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->addView(Landroid/view/View;)V

    .line 242
    return-object v0
.end method

.method private clearItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1669
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentManager:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1674
    iput-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentManager:Ljava/lang/Object;

    .line 1677
    :cond_1
    iget v0, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentContainer:I

    if-eqz v0, :cond_2

    .line 1678
    const/4 v0, 0x0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentContainer:I

    .line 1681
    :cond_2
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v0, :cond_3

    .line 1682
    iput-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    .line 1684
    :cond_3
    return-void
.end method

.method private darkThemeMagic()V
    .locals 3

    .prologue
    .line 1414
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    if-nez v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mDarkBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1420
    :goto_0
    return-void

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mDarkBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1418
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mTabletRightBorder:Landroid/view/View;

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    sget v2, Lcom/roughike/bottombar/R$color;->bb_tabletRightBorderDark:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private findItemPosition(Landroid/view/View;)I
    .locals 4
    .param p1, "viewToFind"    # Landroid/view/View;

    .prologue
    .line 1631
    const/4 v2, 0x0

    .line 1633
    .local v2, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1634
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1636
    .local v0, "candidate":Landroid/view/View;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1637
    move v2, v1

    .line 1642
    .end local v0    # "candidate":Landroid/view/View;
    :cond_0
    return v2

    .line 1633
    .restart local v0    # "candidate":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleBackgroundColorChange(ILandroid/view/View;)V
    .locals 2
    .param p1, "tabPosition"    # I
    .param p2, "tab"    # Landroid/view/View;

    .prologue
    .line 1612
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIsDarkTheme:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    if-eqz v0, :cond_1

    .line 1620
    :cond_0
    :goto_0
    return-void

    .line 1614
    :cond_1
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mColorMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mColorMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1615
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mColorMap:Ljava/util/HashMap;

    .line 1616
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1615
    invoke-direct {p0, p2, v0}, Lcom/roughike/bottombar/BottomBar;->handleBackgroundColorChange(Landroid/view/View;I)V

    goto :goto_0

    .line 1618
    :cond_2
    iget v0, p0, Lcom/roughike/bottombar/BottomBar;->mDefaultBackgroundColor:I

    invoke-direct {p0, p2, v0}, Lcom/roughike/bottombar/BottomBar;->handleBackgroundColorChange(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private handleBackgroundColorChange(Landroid/view/View;I)V
    .locals 2
    .param p1, "tab"    # Landroid/view/View;
    .param p2, "color"    # I

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mBackgroundOverlay:Landroid/view/View;

    invoke-static {p1, v0, v1, p2}, Lcom/roughike/bottombar/MiscUtils;->animateBGColorChange(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 1627
    iput p2, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentBackgroundColor:I

    .line 1628
    return-void
.end method

.method private handleBadgeVisibility(II)V
    .locals 5
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 1253
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1258
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mOuterContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeMap:Ljava/util/HashMap;

    .line 1259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/roughike/bottombar/BottomBarBadge;

    .line 1261
    .local v1, "oldBadge":Lcom/roughike/bottombar/BottomBarBadge;
    invoke-virtual {v1}, Lcom/roughike/bottombar/BottomBarBadge;->getAutoShowAfterUnSelection()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1262
    invoke-virtual {v1}, Lcom/roughike/bottombar/BottomBarBadge;->show()V

    .line 1268
    .end local v1    # "oldBadge":Lcom/roughike/bottombar/BottomBarBadge;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1269
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mOuterContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeMap:Ljava/util/HashMap;

    .line 1270
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roughike/bottombar/BottomBarBadge;

    .line 1272
    .local v0, "newBadge":Lcom/roughike/bottombar/BottomBarBadge;
    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarBadge;->getAutoHideOnSelection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1273
    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarBadge;->hide()V

    goto :goto_0

    .line 1264
    .end local v0    # "newBadge":Lcom/roughike/bottombar/BottomBarBadge;
    .restart local v1    # "oldBadge":Lcom/roughike/bottombar/BottomBarBadge;
    :cond_3
    invoke-virtual {v1}, Lcom/roughike/bottombar/BottomBarBadge;->hide()V

    goto :goto_1
.end method

.method private handleClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1153
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "BOTTOM_BAR_VIEW_INACTIVE"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1154
    const-string v1, "BOTTOM_BAR_VIEW_ACTIVE"

    invoke-virtual {p0, v1}, Lcom/roughike/bottombar/BottomBar;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1156
    .local v0, "oldTab":Landroid/view/View;
    iget-boolean v1, p0, Lcom/roughike/bottombar/BottomBar;->mIgnoreScalingResize:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/roughike/bottombar/BottomBar;->unselectTab(Landroid/view/View;Z)V

    .line 1157
    iget-boolean v1, p0, Lcom/roughike/bottombar/BottomBar;->mIgnoreScalingResize:Z

    if-nez v1, :cond_0

    move v3, v2

    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/roughike/bottombar/BottomBar;->selectTab(Landroid/view/View;Z)V

    .line 1159
    invoke-direct {p0, v0, p1, v2}, Lcom/roughike/bottombar/BottomBar;->shiftingMagic(Landroid/view/View;Landroid/view/View;Z)V

    .line 1161
    .end local v0    # "oldTab":Landroid/view/View;
    :cond_1
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->findItemPosition(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/roughike/bottombar/BottomBar;->updateSelectedTab(I)V

    .line 1162
    return-void

    .restart local v0    # "oldTab":Landroid/view/View;
    :cond_2
    move v1, v3

    .line 1156
    goto :goto_0
.end method

.method private handleLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "BOTTOM_BAR_VIEW_INACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->findItemPosition(Landroid/view/View;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/roughike/bottombar/BottomBarItemBase;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1288
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 986
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    .line 988
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/roughike/bottombar/R$color;->bb_darkBackgroundColor:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mDarkBackgroundColor:Ljava/lang/Integer;

    .line 991
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mWhiteColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/roughike/bottombar/R$color;->white:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mWhiteColor:Ljava/lang/Integer;

    .line 993
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/roughike/bottombar/R$attr;->colorPrimary:I

    invoke-static {v0, v1}, Lcom/roughike/bottombar/MiscUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mPrimaryColor:Ljava/lang/Integer;

    .line 994
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/roughike/bottombar/R$color;->bb_inActiveBottomBarItemColor:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mInActiveColor:Ljava/lang/Integer;

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/roughike/bottombar/MiscUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mScreenWidth:I

    .line 1007
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mTenDp:I

    .line 1008
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mSixteenDp:I

    .line 1009
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mSixDp:I

    .line 1010
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mEightDp:I

    .line 1011
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    const/high16 v1, 0x43280000    # 168.0f

    invoke-static {v0, v1}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mMaxFixedItemWidth:I

    .line 1012
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    const/high16 v1, 0x42c00000    # 96.0f

    invoke-static {v0, v1}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mMaxInActiveShiftingItemWidth:I

    .line 1013
    return-void
.end method

.method private initializeViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 1016
    iget-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mIgnoreTabletLayout:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    .line 1017
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/roughike/bottombar/R$bool;->bb_bottom_bar_is_tablet_mode:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    .line 1018
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v2, v4}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1019
    iget-object v4, p0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    if-eqz v2, :cond_6

    sget v2, Lcom/roughike/bottombar/R$layout;->bb_bottom_bar_item_container_tablet:I

    :goto_1
    invoke-static {v4, v2, p0}, Lcom/roughike/bottombar/BottomBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1022
    .local v1, "rootView":Landroid/view/View;
    sget v2, Lcom/roughike/bottombar/R$id;->bb_tablet_right_border:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mTabletRightBorder:Landroid/view/View;

    .line 1024
    sget v2, Lcom/roughike/bottombar/R$id;->bb_user_content_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mUserContentContainer:Landroid/view/ViewGroup;

    .line 1026
    sget v2, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_shadow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mShadowView:Landroid/view/View;

    .line 1028
    sget v2, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_outer_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mOuterContainer:Landroid/view/ViewGroup;

    .line 1029
    sget v2, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_item_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    .line 1031
    sget v2, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_background_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mBackgroundView:Landroid/view/View;

    .line 1032
    sget v2, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_background_overlay:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mBackgroundOverlay:Landroid/view/View;

    .line 1034
    iget-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mIsShy:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mIgnoreTabletLayout:Z

    if-eqz v2, :cond_0

    .line 1035
    iput-object v6, p0, Lcom/roughike/bottombar/BottomBar;->mPendingUserContentView:Landroid/view/View;

    .line 1038
    :cond_0
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mPendingUserContentView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1039
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mPendingUserContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1041
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    .line 1042
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1046
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mIsShy:Z

    if-eqz v2, :cond_2

    .line 1047
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mPendingUserContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/roughike/bottombar/BottomBar;->mPendingUserContentView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1050
    :cond_2
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mUserContentContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/roughike/bottombar/BottomBar;->mPendingUserContentView:Landroid/view/View;

    invoke-virtual {v2, v4, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1051
    iput-object v6, p0, Lcom/roughike/bottombar/BottomBar;->mPendingUserContentView:Landroid/view/View;

    .line 1054
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mIsShy:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    if-nez v2, :cond_4

    .line 1055
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/roughike/bottombar/BottomBar$4;

    invoke-direct {v3, p0}, Lcom/roughike/bottombar/BottomBar$4;-><init>(Lcom/roughike/bottombar/BottomBar;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1074
    :cond_4
    return-void

    .end local v1    # "rootView":Landroid/view/View;
    :cond_5
    move v2, v3

    .line 1017
    goto/16 :goto_0

    .line 1019
    :cond_6
    sget v2, Lcom/roughike/bottombar/R$layout;->bb_bottom_bar_item_container:I

    goto/16 :goto_1
.end method

.method private static navBarMagic(Landroid/app/Activity;Lcom/roughike/bottombar/BottomBar;)V
    .locals 25
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bottomBar"    # Lcom/roughike/bottombar/BottomBar;

    .prologue
    .line 1687
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 1689
    .local v17, "res":Landroid/content/res/Resources;
    const-string v21, "config_showNavigationBar"

    const-string v22, "bool"

    const-string v23, "android"

    .line 1690
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1691
    .local v18, "softMenuIdentifier":I
    const-string v21, "navigation_bar_height"

    const-string v22, "dimen"

    const-string v23, "android"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1693
    .local v11, "navBarIdentifier":I
    const/4 v9, 0x0

    .line 1695
    .local v9, "navBarHeight":I
    if-lez v11, :cond_0

    .line 1696
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1699
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/roughike/bottombar/BottomBar;->drawBehindNavBar()Z

    move-result v21

    if-eqz v21, :cond_1

    if-nez v9, :cond_2

    .line 1800
    :cond_1
    :goto_0
    return-void

    .line 1704
    :cond_2
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0xe

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    .line 1705
    invoke-static/range {p0 .. p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v21

    if-nez v21, :cond_1

    .line 1709
    :cond_3
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x11

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    if-lez v18, :cond_1

    .line 1710
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1718
    :cond_4
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x11

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_6

    .line 1719
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1721
    .local v4, "d":Landroid/view/Display;
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1722
    .local v14, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v14}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1724
    iget v15, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1725
    .local v15, "realHeight":I
    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 1727
    .local v16, "realWidth":I
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1728
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1730
    iget v5, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1731
    .local v5, "displayHeight":I
    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1733
    .local v7, "displayWidth":I
    sub-int v21, v16, v7

    if-gtz v21, :cond_5

    sub-int v21, v15, v5

    if-lez v21, :cond_9

    :cond_5
    const/4 v8, 0x1

    .line 1736
    .local v8, "hasSoftwareKeys":Z
    :goto_1
    if-eqz v8, :cond_1

    .line 1744
    .end local v4    # "d":Landroid/view/Display;
    .end local v5    # "displayHeight":I
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v7    # "displayWidth":I
    .end local v8    # "hasSoftwareKeys":Z
    .end local v14    # "realDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v15    # "realHeight":I
    .end local v16    # "realWidth":I
    :cond_6
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x13

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1

    .line 1745
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1746
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v22, v0

    const/high16 v23, 0x8000000

    or-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1748
    invoke-virtual/range {p1 .. p1}, Lcom/roughike/bottombar/BottomBar;->useTopOffset()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1750
    const-string v21, "status_bar_height"

    const-string v22, "dimen"

    const-string v23, "android"

    .line 1751
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 1753
    .local v19, "statusBarResource":I
    if-lez v19, :cond_a

    .line 1754
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1759
    .local v12, "offset":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/roughike/bottombar/BottomBar;->useOnlyStatusbarOffset()Z

    move-result v21

    if-nez v21, :cond_7

    .line 1760
    new-instance v20, Landroid/util/TypedValue;

    invoke-direct/range {v20 .. v20}, Landroid/util/TypedValue;-><init>()V

    .line 1761
    .local v20, "tv":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v21

    const v22, 0x10102eb

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v20

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1762
    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v21, v0

    .line 1763
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    .line 1762
    invoke-static/range {v21 .. v22}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v21

    add-int v12, v12, v21

    .line 1769
    .end local v20    # "tv":Landroid/util/TypedValue;
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/roughike/bottombar/BottomBar;->getUserContainer()Landroid/view/ViewGroup;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1772
    .end local v12    # "offset":I
    .end local v19    # "statusBarResource":I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/roughike/bottombar/BottomBar;->getOuterContainer()Landroid/view/View;

    move-result-object v13

    .line 1773
    .local v13, "outerContainer":Landroid/view/View;
    move v10, v9

    .line 1774
    .local v10, "navBarHeightCopy":I
    invoke-virtual/range {p1 .. p1}, Lcom/roughike/bottombar/BottomBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v21

    new-instance v22, Lcom/roughike/bottombar/BottomBar$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v10}, Lcom/roughike/bottombar/BottomBar$5;-><init>(Lcom/roughike/bottombar/BottomBar;Landroid/view/View;I)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_0

    .line 1733
    .end local v10    # "navBarHeightCopy":I
    .end local v13    # "outerContainer":Landroid/view/View;
    .restart local v4    # "d":Landroid/view/Display;
    .restart local v5    # "displayHeight":I
    .restart local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v7    # "displayWidth":I
    .restart local v14    # "realDisplayMetrics":Landroid/util/DisplayMetrics;
    .restart local v15    # "realHeight":I
    .restart local v16    # "realWidth":I
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1756
    .end local v4    # "d":Landroid/view/Display;
    .end local v5    # "displayHeight":I
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v7    # "displayWidth":I
    .end local v14    # "realDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v15    # "realHeight":I
    .end local v16    # "realWidth":I
    .restart local v19    # "statusBarResource":I
    :cond_a
    const/high16 v21, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v12

    .restart local v12    # "offset":I
    goto :goto_2

    .line 1765
    .restart local v20    # "tv":Landroid/util/TypedValue;
    :cond_b
    const/high16 v21, 0x42600000    # 56.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v21

    add-int v12, v12, v21

    goto :goto_3
.end method

.method private notifyMenuListener(Ljava/lang/Object;ZI)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "isReselection"    # Z
    .param p3, "menuItemId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 1235
    instance-of v2, p1, Lcom/roughike/bottombar/OnMenuTabClickListener;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 1236
    check-cast v0, Lcom/roughike/bottombar/OnMenuTabClickListener;

    .line 1238
    .local v0, "onMenuTabClickListener":Lcom/roughike/bottombar/OnMenuTabClickListener;
    if-nez p2, :cond_1

    .line 1239
    invoke-interface {v0, p3}, Lcom/roughike/bottombar/OnMenuTabClickListener;->onMenuTabSelected(I)V

    .line 1250
    .end local v0    # "onMenuTabClickListener":Lcom/roughike/bottombar/OnMenuTabClickListener;
    :cond_0
    :goto_0
    return-void

    .line 1241
    .restart local v0    # "onMenuTabClickListener":Lcom/roughike/bottombar/OnMenuTabClickListener;
    :cond_1
    invoke-interface {v0, p3}, Lcom/roughike/bottombar/OnMenuTabClickListener;->onMenuTabReSelected(I)V

    goto :goto_0

    .line 1243
    .end local v0    # "onMenuTabClickListener":Lcom/roughike/bottombar/OnMenuTabClickListener;
    :cond_2
    instance-of v2, p1, Lcom/roughike/bottombar/OnMenuTabSelectedListener;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 1244
    check-cast v1, Lcom/roughike/bottombar/OnMenuTabSelectedListener;

    .line 1246
    .local v1, "onMenuTabSelectedListener":Lcom/roughike/bottombar/OnMenuTabSelectedListener;
    if-nez p2, :cond_0

    .line 1247
    invoke-interface {v1, p3}, Lcom/roughike/bottombar/OnMenuTabSelectedListener;->onMenuItemSelected(I)V

    goto :goto_0
.end method

.method private notifyRegularListener(Ljava/lang/Object;ZI)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "isReselection"    # Z
    .param p3, "position"    # I

    .prologue
    .line 1216
    instance-of v2, p1, Lcom/roughike/bottombar/OnTabClickListener;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 1217
    check-cast v0, Lcom/roughike/bottombar/OnTabClickListener;

    .line 1219
    .local v0, "onTabClickListener":Lcom/roughike/bottombar/OnTabClickListener;
    if-nez p2, :cond_1

    .line 1220
    invoke-interface {v0, p3}, Lcom/roughike/bottombar/OnTabClickListener;->onTabSelected(I)V

    .line 1231
    .end local v0    # "onTabClickListener":Lcom/roughike/bottombar/OnTabClickListener;
    :cond_0
    :goto_0
    return-void

    .line 1222
    .restart local v0    # "onTabClickListener":Lcom/roughike/bottombar/OnTabClickListener;
    :cond_1
    invoke-interface {v0, p3}, Lcom/roughike/bottombar/OnTabClickListener;->onTabReSelected(I)V

    goto :goto_0

    .line 1224
    .end local v0    # "onTabClickListener":Lcom/roughike/bottombar/OnTabClickListener;
    :cond_2
    instance-of v2, p1, Lcom/roughike/bottombar/OnTabSelectedListener;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 1225
    check-cast v1, Lcom/roughike/bottombar/OnTabSelectedListener;

    .line 1227
    .local v1, "onTabSelectedListener":Lcom/roughike/bottombar/OnTabSelectedListener;
    if-nez p2, :cond_0

    .line 1228
    invoke-interface {v1, p3}, Lcom/roughike/bottombar/OnTabSelectedListener;->onItemSelected(I)V

    goto :goto_0
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1423
    if-eqz p1, :cond_1

    .line 1424
    const-string v0, "STATE_CURRENT_SELECTED_TAB"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    .line 1425
    const-string v0, "STATE_BADGE_STATES_BUNDLE"

    .line 1426
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeStateMap:Ljava/util/HashMap;

    .line 1428
    iget v0, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    if-ne v0, v1, :cond_0

    .line 1429
    const/4 v0, 0x0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    .line 1430
    const-string v0, "BottomBar"

    const-string v1, "You must override the Activity\'s onSaveInstanceState(Bundle outState) and call BottomBar.onSaveInstanceState(outState) there to restore the state properly."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_0
    iput-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mIsComingFromRestoredState:Z

    .line 1436
    iput-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mShouldUpdateFragmentInitially:Z

    .line 1438
    :cond_1
    return-void
.end method

.method private selectTab(Landroid/view/View;Z)V
    .locals 12
    .param p1, "tab"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const-wide/16 v10, 0x96

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1481
    const-string v5, "BOTTOM_BAR_VIEW_ACTIVE"

    invoke-virtual {p1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1482
    sget v5, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_icon:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatImageView;

    .line 1483
    .local v1, "icon":Landroid/support/v7/widget/AppCompatImageView;
    sget v5, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_title:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1485
    .local v3, "title":Landroid/widget/TextView;
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->findItemPosition(Landroid/view/View;)I

    move-result v2

    .line 1487
    .local v2, "tabPosition":I
    iget-boolean v5, p0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    if-eqz v5, :cond_6

    .line 1488
    :cond_0
    iget v5, p0, Lcom/roughike/bottombar/BottomBar;->mCustomActiveTabColor:I

    if-eqz v5, :cond_5

    iget v0, p0, Lcom/roughike/bottombar/BottomBar;->mCustomActiveTabColor:I

    .line 1490
    .local v0, "activeColor":I
    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatImageView;->setColorFilter(I)V

    .line 1492
    if-eqz v3, :cond_1

    .line 1493
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1499
    .end local v0    # "activeColor":I
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/roughike/bottombar/BottomBar;->mIsDarkTheme:Z

    if-eqz v5, :cond_3

    .line 1500
    if-eqz v3, :cond_2

    .line 1501
    invoke-static {v3, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 1504
    :cond_2
    invoke-static {v1, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 1507
    :cond_3
    if-nez v3, :cond_7

    .line 1546
    :cond_4
    :goto_2
    return-void

    .line 1488
    :cond_5
    iget-object v5, p0, Lcom/roughike/bottombar/BottomBar;->mPrimaryColor:Ljava/lang/Integer;

    .line 1489
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 1496
    :cond_6
    iget-object v5, p0, Lcom/roughike/bottombar/BottomBar;->mWhiteColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1511
    :cond_7
    if-eqz p2, :cond_a

    .line 1512
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 1513
    invoke-virtual {v5, v10, v11}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 1514
    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 1515
    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 1517
    .local v4, "titleAnimator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-boolean v5, p0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    if-eqz v5, :cond_8

    .line 1518
    invoke-virtual {v4, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1521
    :cond_8
    invoke-virtual {v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 1525
    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatImageView;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/roughike/bottombar/BottomBar;->mSixDp:I

    invoke-static {v1, v5, v6, v10, v11}, Lcom/roughike/bottombar/MiscUtils;->resizePaddingTop(Landroid/view/View;IIJ)V

    .line 1527
    iget-boolean v5, p0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    if-eqz v5, :cond_9

    .line 1528
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 1529
    invoke-virtual {v5, v10, v11}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 1530
    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 1531
    invoke-virtual {v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 1534
    :cond_9
    invoke-direct {p0, v2, p1}, Lcom/roughike/bottombar/BottomBar;->handleBackgroundColorChange(ILandroid/view/View;)V

    goto :goto_2

    .line 1536
    .end local v4    # "titleAnimator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_a
    invoke-static {v3, v9}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 1537
    invoke-static {v3, v9}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 1538
    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatImageView;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/roughike/bottombar/BottomBar;->mSixDp:I

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatImageView;->getPaddingRight()I

    move-result v7

    .line 1539
    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatImageView;->getPaddingBottom()I

    move-result v8

    .line 1538
    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/support/v7/widget/AppCompatImageView;->setPadding(IIII)V

    .line 1541
    iget-boolean v5, p0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    if-eqz v5, :cond_4

    .line 1542
    invoke-static {v1, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 1543
    invoke-static {v3, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_2
.end method

.method private setPendingUserContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "oldLayout"    # Landroid/view/View;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar;->mPendingUserContentView:Landroid/view/View;

    .line 176
    return-void
.end method

.method private shiftingMagic(Landroid/view/View;Landroid/view/View;Z)V
    .locals 2
    .param p1, "oldTab"    # Landroid/view/View;
    .param p2, "newTab"    # Landroid/view/View;
    .param p3, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1165
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIgnoreShiftingResize:Z

    if-nez v0, :cond_2

    .line 1166
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1168
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "oldTab":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1171
    .restart local p1    # "oldTab":Landroid/view/View;
    :cond_0
    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 1173
    check-cast p2, Landroid/widget/FrameLayout;

    .end local p2    # "newTab":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1176
    .restart local p2    # "newTab":Landroid/view/View;
    :cond_1
    if-eqz p3, :cond_3

    .line 1177
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->mInActiveShiftingItemWidth:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/roughike/bottombar/MiscUtils;->resizeTab(Landroid/view/View;FF)V

    .line 1178
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->mActiveShiftingItemWidth:I

    int-to-float v1, v1

    invoke-static {p2, v0, v1}, Lcom/roughike/bottombar/MiscUtils;->resizeTab(Landroid/view/View;FF)V

    .line 1184
    :cond_2
    :goto_0
    return-void

    .line 1180
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->mInActiveShiftingItemWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1181
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->mActiveShiftingItemWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private toughChildHood(Z)V
    .locals 1
    .param p1, "useExtraOffset"    # Z

    .prologue
    .line 1080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIsShy:Z

    .line 1081
    iput-boolean p1, p0, Lcom/roughike/bottombar/BottomBar;->mUseExtraOffset:Z

    .line 1082
    return-void
.end method

.method private unselectTab(Landroid/view/View;Z)V
    .locals 10
    .param p1, "tab"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const-wide/16 v8, 0x96

    const/4 v7, 0x0

    .line 1549
    const-string v6, "BOTTOM_BAR_VIEW_INACTIVE"

    invoke-virtual {p1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1551
    sget v6, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_icon:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatImageView;

    .line 1552
    .local v0, "icon":Landroid/support/v7/widget/AppCompatImageView;
    sget v6, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_title:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1554
    .local v4, "title":Landroid/widget/TextView;
    iget-boolean v6, p0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    if-eqz v6, :cond_1

    .line 1555
    :cond_0
    iget-boolean v6, p0, Lcom/roughike/bottombar/BottomBar;->mIsDarkTheme:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/roughike/bottombar/BottomBar;->mWhiteColor:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1556
    .local v2, "inActiveColor":I
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatImageView;->setColorFilter(I)V

    .line 1558
    if-eqz v4, :cond_1

    .line 1559
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1563
    .end local v2    # "inActiveColor":I
    :cond_1
    iget-boolean v6, p0, Lcom/roughike/bottombar/BottomBar;->mIsDarkTheme:Z

    if-eqz v6, :cond_3

    .line 1564
    if-eqz v4, :cond_2

    .line 1565
    iget v6, p0, Lcom/roughike/bottombar/BottomBar;->mTabAlpha:F

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 1568
    :cond_2
    iget v6, p0, Lcom/roughike/bottombar/BottomBar;->mTabAlpha:F

    invoke-static {v0, v6}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 1571
    :cond_3
    if-nez v4, :cond_6

    .line 1609
    :cond_4
    :goto_1
    return-void

    .line 1555
    :cond_5
    iget-object v6, p0, Lcom/roughike/bottombar/BottomBar;->mInActiveColor:Ljava/lang/Integer;

    goto :goto_0

    .line 1575
    :cond_6
    iget-boolean v6, p0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    if-eqz v6, :cond_8

    move v3, v7

    .line 1576
    .local v3, "scale":F
    :goto_2
    iget-boolean v6, p0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    if-eqz v6, :cond_9

    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->mSixteenDp:I

    .line 1578
    .local v1, "iconPaddingTop":I
    :goto_3
    if-eqz p2, :cond_a

    .line 1579
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 1580
    invoke-virtual {v6, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 1581
    invoke-virtual {v6, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 1582
    invoke-virtual {v6, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 1584
    .local v5, "titleAnimator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-boolean v6, p0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    if-eqz v6, :cond_7

    .line 1585
    invoke-virtual {v5, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1588
    :cond_7
    invoke-virtual {v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 1590
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageView;->getPaddingTop()I

    move-result v6

    invoke-static {v0, v6, v1, v8, v9}, Lcom/roughike/bottombar/MiscUtils;->resizePaddingTop(Landroid/view/View;IIJ)V

    .line 1592
    iget-boolean v6, p0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    if-eqz v6, :cond_4

    .line 1593
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 1594
    invoke-virtual {v6, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    iget v7, p0, Lcom/roughike/bottombar/BottomBar;->mTabAlpha:F

    .line 1595
    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 1596
    invoke-virtual {v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    .line 1575
    .end local v1    # "iconPaddingTop":I
    .end local v3    # "scale":F
    .end local v5    # "titleAnimator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_8
    const v3, 0x3f5c28f6    # 0.86f

    goto :goto_2

    .line 1576
    .restart local v3    # "scale":F
    :cond_9
    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->mEightDp:I

    goto :goto_3

    .line 1599
    .restart local v1    # "iconPaddingTop":I
    :cond_a
    invoke-static {v4, v3}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 1600
    invoke-static {v4, v3}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 1601
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageView;->getPaddingRight()I

    move-result v8

    .line 1602
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageView;->getPaddingBottom()I

    move-result v9

    .line 1601
    invoke-virtual {v0, v6, v1, v8, v9}, Landroid/support/v7/widget/AppCompatImageView;->setPadding(IIII)V

    .line 1604
    iget-boolean v6, p0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    if-eqz v6, :cond_4

    .line 1605
    iget v6, p0, Lcom/roughike/bottombar/BottomBar;->mTabAlpha:F

    invoke-static {v0, v6}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 1606
    invoke-static {v4, v7}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_1
.end method

.method private updateCurrentFragment()V
    .locals 4

    .prologue
    .line 1646
    iget-boolean v1, p0, Lcom/roughike/bottombar/BottomBar;->mShouldUpdateFragmentInitially:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentManager:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentContainer:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    instance-of v1, v1, [Lcom/roughike/bottombar/BottomBarFragment;

    if-eqz v1, :cond_0

    .line 1650
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    iget v2, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    aget-object v0, v1, v2

    check-cast v0, Lcom/roughike/bottombar/BottomBarFragment;

    .line 1652
    .local v0, "newFragment":Lcom/roughike/bottombar/BottomBarFragment;
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentManager:Ljava/lang/Object;

    instance-of v1, v1, Landroid/support/v4/app/FragmentManager;

    if-eqz v1, :cond_1

    .line 1653
    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarFragment;->getSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1654
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentManager:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget v2, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentContainer:I

    .line 1655
    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarFragment;->getSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1656
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1665
    .end local v0    # "newFragment":Lcom/roughike/bottombar/BottomBarFragment;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/roughike/bottombar/BottomBar;->mShouldUpdateFragmentInitially:Z

    .line 1666
    return-void

    .line 1657
    .restart local v0    # "newFragment":Lcom/roughike/bottombar/BottomBarFragment;
    :cond_1
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentManager:Ljava/lang/Object;

    instance-of v1, v1, Landroid/app/FragmentManager;

    if-eqz v1, :cond_0

    .line 1658
    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarFragment;->getFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1659
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentManager:Ljava/lang/Object;

    check-cast v1, Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget v2, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentContainer:I

    .line 1660
    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarFragment;->getFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1661
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private updateItems([Lcom/roughike/bottombar/BottomBarItemBase;)V
    .locals 22
    .param p1, "bottomBarItems"    # [Lcom/roughike/bottombar/BottomBarItemBase;

    .prologue
    .line 1292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    if-nez v14, :cond_0

    .line 1293
    invoke-direct/range {p0 .. p0}, Lcom/roughike/bottombar/BottomBar;->initializeViews()V

    .line 1296
    :cond_0
    const/4 v8, 0x0

    .line 1297
    .local v8, "index":I
    const/4 v2, 0x0

    .line 1299
    .local v2, "biggestWidth":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/roughike/bottombar/BottomBar;->mMaxFixedTabCount:I

    if-ltz v14, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/roughike/bottombar/BottomBar;->mMaxFixedTabCount:I

    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v14, v15, :cond_9

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    .line 1301
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/roughike/bottombar/BottomBar;->mIsDarkTheme:Z

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/roughike/bottombar/BottomBar;->mIgnoreNightMode:Z

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    .line 1302
    invoke-static {v14}, Lcom/roughike/bottombar/MiscUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1303
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/roughike/bottombar/BottomBar;->mIsDarkTheme:Z

    .line 1306
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/roughike/bottombar/BottomBar;->mIsDarkTheme:Z

    if-eqz v14, :cond_a

    .line 1307
    invoke-direct/range {p0 .. p0}, Lcom/roughike/bottombar/BottomBar;->darkThemeMagic()V

    .line 1317
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    array-length v14, v0

    new-array v13, v14, [Landroid/view/View;

    .line 1319
    .local v13, "viewsToAdd":[Landroid/view/View;
    move-object/from16 v0, p1

    array-length v15, v0

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v15, :cond_f

    aget-object v3, p1, v14

    .line 1322
    .local v3, "bottomBarItemBase":Lcom/roughike/bottombar/BottomBarItemBase;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    move/from16 v16, v0

    if-nez v16, :cond_b

    .line 1323
    sget v9, Lcom/roughike/bottombar/R$layout;->bb_bottom_bar_item_shifting:I

    .line 1329
    .local v9, "layoutResource":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v9, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1330
    .local v4, "bottomBarTab":Landroid/view/View;
    sget v16, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_icon:I

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/AppCompatImageView;

    .line 1332
    .local v7, "icon":Landroid/support/v7/widget/AppCompatImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/roughike/bottombar/BottomBarItemBase;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1334
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    move/from16 v16, v0

    if-nez v16, :cond_4

    .line 1335
    sget v16, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_title:I

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1336
    .local v12, "title":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/roughike/bottombar/BottomBarItemBase;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    move-object/from16 v0, p0

    iget v0, v0, Lcom/roughike/bottombar/BottomBar;->mPendingTextAppearance:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 1339
    move-object/from16 v0, p0

    iget v0, v0, Lcom/roughike/bottombar/BottomBar;->mPendingTextAppearance:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v12, v0}, Lcom/roughike/bottombar/MiscUtils;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 1342
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roughike/bottombar/BottomBar;->mPendingTypeface:Landroid/graphics/Typeface;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roughike/bottombar/BottomBar;->mPendingTypeface:Landroid/graphics/Typeface;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1347
    .end local v12    # "title":Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/roughike/bottombar/BottomBar;->mIsDarkTheme:Z

    move/from16 v16, v0

    if-nez v16, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 1348
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roughike/bottombar/BottomBar;->mWhiteColor:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/AppCompatImageView;->setColorFilter(I)V

    .line 1351
    :cond_6
    instance-of v0, v3, Lcom/roughike/bottombar/BottomBarTab;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 1352
    check-cast v3, Lcom/roughike/bottombar/BottomBarTab;

    .end local v3    # "bottomBarItemBase":Lcom/roughike/bottombar/BottomBarItemBase;
    iget v0, v3, Lcom/roughike/bottombar/BottomBarTab;->id:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setId(I)V

    .line 1355
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v8, v0, :cond_d

    .line 1356
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v1}, Lcom/roughike/bottombar/BottomBar;->selectTab(Landroid/view/View;Z)V

    .line 1361
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    move/from16 v16, v0

    if-nez v16, :cond_e

    .line 1362
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    if-le v0, v2, :cond_8

    .line 1363
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1366
    :cond_8
    aput-object v4, v13, v8

    .line 1371
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1372
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1373
    add-int/lit8 v8, v8, 0x1

    .line 1319
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1299
    .end local v4    # "bottomBarTab":Landroid/view/View;
    .end local v7    # "icon":Landroid/support/v7/widget/AppCompatImageView;
    .end local v9    # "layoutResource":I
    .end local v13    # "viewsToAdd":[Landroid/view/View;
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1308
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    if-eqz v14, :cond_2

    .line 1309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/roughike/bottombar/BottomBar;->mPrimaryColor:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/roughike/bottombar/BottomBar;->mCurrentBackgroundColor:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/roughike/bottombar/BottomBar;->mDefaultBackgroundColor:I

    .line 1310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/roughike/bottombar/BottomBar;->mBackgroundView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/roughike/bottombar/BottomBar;->mDefaultBackgroundColor:I

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    instance-of v14, v14, Landroid/app/Activity;

    if-eqz v14, :cond_2

    .line 1313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    check-cast v14, Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/roughike/bottombar/BottomBar;->navBarMagic(Landroid/app/Activity;Lcom/roughike/bottombar/BottomBar;)V

    goto/16 :goto_1

    .line 1325
    .restart local v3    # "bottomBarItemBase":Lcom/roughike/bottombar/BottomBarItemBase;
    .restart local v13    # "viewsToAdd":[Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    sget v9, Lcom/roughike/bottombar/R$layout;->bb_bottom_bar_item_fixed_tablet:I

    .restart local v9    # "layoutResource":I
    :goto_6
    goto/16 :goto_3

    .end local v9    # "layoutResource":I
    :cond_c
    sget v9, Lcom/roughike/bottombar/R$layout;->bb_bottom_bar_item_fixed:I

    goto :goto_6

    .line 1358
    .end local v3    # "bottomBarItemBase":Lcom/roughike/bottombar/BottomBarItemBase;
    .restart local v4    # "bottomBarTab":Landroid/view/View;
    .restart local v7    # "icon":Landroid/support/v7/widget/AppCompatImageView;
    .restart local v9    # "layoutResource":I
    :cond_d
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v1}, Lcom/roughike/bottombar/BottomBar;->unselectTab(Landroid/view/View;Z)V

    goto :goto_4

    .line 1368
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 1376
    .end local v4    # "bottomBarTab":Landroid/view/View;
    .end local v7    # "icon":Landroid/support/v7/widget/AppCompatImageView;
    .end local v9    # "layoutResource":I
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    if-nez v14, :cond_12

    .line 1377
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/roughike/bottombar/BottomBar;->mScreenWidth:I

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    div-int v15, v15, v16

    int-to-float v15, v15

    .line 1378
    invoke-static {v14, v15}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/roughike/bottombar/BottomBar;->mMaxFixedItemWidth:I

    .line 1377
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1382
    .local v11, "proposedItemWidth":I
    int-to-double v14, v11

    const-wide v16, 0x3feccccccccccccdL    # 0.9

    mul-double v14, v14, v16

    double-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/roughike/bottombar/BottomBar;->mInActiveShiftingItemWidth:I

    .line 1383
    int-to-double v14, v11

    int-to-double v0, v11

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fb999999999999aL    # 0.1

    mul-double v18, v18, v20

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/roughike/bottombar/BottomBar;->mActiveShiftingItemWidth:I

    .line 1385
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/roughike/bottombar/R$dimen;->bb_height:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1386
    .local v6, "height":I
    array-length v15, v13

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v15, :cond_12

    aget-object v5, v13, v14

    .line 1389
    .local v5, "bottomBarView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/roughike/bottombar/BottomBar;->mIgnoreShiftingResize:Z

    move/from16 v16, v0

    if-nez v16, :cond_11

    .line 1390
    const-string v16, "BOTTOM_BAR_VIEW_ACTIVE"

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 1391
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/roughike/bottombar/BottomBar;->mActiveShiftingItemWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v10, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1399
    .local v10, "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_8
    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1386
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 1393
    .end local v10    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_10
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/roughike/bottombar/BottomBar;->mInActiveShiftingItemWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v10, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v10    # "params":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_8

    .line 1396
    .end local v10    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_11
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v10    # "params":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_8

    .line 1404
    .end local v5    # "bottomBarView":Landroid/view/View;
    .end local v6    # "height":I
    .end local v10    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "proposedItemWidth":I
    :cond_12
    move-object/from16 v0, p0

    iget v14, v0, Lcom/roughike/bottombar/BottomBar;->mPendingTextAppearance:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_13

    .line 1405
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/roughike/bottombar/BottomBar;->mPendingTextAppearance:I

    .line 1408
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/roughike/bottombar/BottomBar;->mPendingTypeface:Landroid/graphics/Typeface;

    if-eqz v14, :cond_14

    .line 1409
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/roughike/bottombar/BottomBar;->mPendingTypeface:Landroid/graphics/Typeface;

    .line 1411
    :cond_14
    return-void
.end method

.method private updateSelectedTab(I)V
    .locals 6
    .param p1, "newPosition"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1187
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mMenuListener:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    instance-of v2, v2, [Lcom/roughike/bottombar/BottomBarTab;

    if-eqz v2, :cond_3

    move v0, v3

    .line 1188
    .local v0, "notifyMenuListener":Z
    :goto_0
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mListener:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v1, v3

    .line 1190
    .local v1, "notifyRegularListener":Z
    :goto_1
    iget v2, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    if-eq p1, v2, :cond_5

    .line 1191
    iget v2, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    invoke-direct {p0, v2, p1}, Lcom/roughike/bottombar/BottomBar;->handleBadgeVisibility(II)V

    .line 1192
    iput p1, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    .line 1194
    if-eqz v1, :cond_0

    .line 1195
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mListener:Ljava/lang/Object;

    iget v3, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    invoke-direct {p0, v2, v4, v3}, Lcom/roughike/bottombar/BottomBar;->notifyRegularListener(Ljava/lang/Object;ZI)V

    .line 1198
    :cond_0
    if-eqz v0, :cond_1

    .line 1199
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mMenuListener:Ljava/lang/Object;

    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    iget v5, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    aget-object v2, v2, v5

    check-cast v2, Lcom/roughike/bottombar/BottomBarTab;

    iget v2, v2, Lcom/roughike/bottombar/BottomBarTab;->id:I

    invoke-direct {p0, v3, v4, v2}, Lcom/roughike/bottombar/BottomBar;->notifyMenuListener(Ljava/lang/Object;ZI)V

    .line 1202
    :cond_1
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->updateCurrentFragment()V

    .line 1212
    :cond_2
    :goto_2
    return-void

    .end local v0    # "notifyMenuListener":Z
    .end local v1    # "notifyRegularListener":Z
    :cond_3
    move v0, v4

    .line 1187
    goto :goto_0

    .restart local v0    # "notifyMenuListener":Z
    :cond_4
    move v1, v4

    .line 1188
    goto :goto_1

    .line 1204
    .restart local v1    # "notifyRegularListener":Z
    :cond_5
    if-eqz v1, :cond_6

    .line 1205
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mListener:Ljava/lang/Object;

    iget v4, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    invoke-direct {p0, v2, v3, v4}, Lcom/roughike/bottombar/BottomBar;->notifyRegularListener(Ljava/lang/Object;ZI)V

    .line 1208
    :cond_6
    if-eqz v0, :cond_2

    .line 1209
    iget-object v4, p0, Lcom/roughike/bottombar/BottomBar;->mMenuListener:Ljava/lang/Object;

    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    iget v5, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    aget-object v2, v2, v5

    check-cast v2, Lcom/roughike/bottombar/BottomBarTab;

    iget v2, v2, Lcom/roughike/bottombar/BottomBarTab;->id:I

    invoke-direct {p0, v4, v3, v2}, Lcom/roughike/bottombar/BottomBar;->notifyMenuListener(Ljava/lang/Object;ZI)V

    goto :goto_2
.end method

.method private updateTitleBottomPadding()V
    .locals 12

    .prologue
    .line 1455
    iget-object v8, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    if-nez v8, :cond_1

    .line 1478
    :cond_0
    return-void

    .line 1459
    :cond_1
    iget-object v8, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1461
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1462
    iget-object v8, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1463
    .local v6, "tab":Landroid/view/View;
    sget v8, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_title:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1464
    .local v7, "title":Landroid/widget/TextView;
    if-nez v7, :cond_3

    .line 1461
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1467
    :cond_3
    invoke-virtual {v7}, Landroid/widget/TextView;->getBaseline()I

    move-result v0

    .line 1469
    .local v0, "baseline":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    .line 1470
    .local v2, "height":I
    sub-int v5, v2, v0

    .line 1471
    .local v5, "paddingInsideTitle":I
    iget v8, p0, Lcom/roughike/bottombar/BottomBar;->mTenDp:I

    sub-int v4, v8, v5

    .line 1472
    .local v4, "missingPadding":I
    if-lez v4, :cond_2

    .line 1474
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v9

    .line 1475
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v11, v4

    .line 1474
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method


# virtual methods
.method protected drawBehindNavBar()Z
    .locals 1

    .prologue
    .line 1105
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mDrawBehindNavBar:Z

    return v0
.end method

.method public getBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mOuterContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getBarSize(Lcom/roughike/bottombar/OnSizeDeterminedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/roughike/bottombar/OnSizeDeterminedListener;

    .prologue
    .line 896
    iget-boolean v1, p0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mOuterContainer:Landroid/view/ViewGroup;

    .line 897
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 899
    .local v0, "sizeCandidate":I
    :goto_0
    if-nez v0, :cond_1

    .line 900
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mOuterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/roughike/bottombar/BottomBar$3;

    invoke-direct {v2, p0, p1}, Lcom/roughike/bottombar/BottomBar$3;-><init>(Lcom/roughike/bottombar/BottomBar;Lcom/roughike/bottombar/OnSizeDeterminedListener;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 920
    :goto_1
    return-void

    .line 897
    .end local v0    # "sizeCandidate":I
    :cond_0
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->mOuterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    goto :goto_0

    .line 919
    .restart local v0    # "sizeCandidate":I
    :cond_1
    invoke-interface {p1, v0}, Lcom/roughike/bottombar/OnSizeDeterminedListener;->onSizeReady(I)V

    goto :goto_1
.end method

.method public getCurrentTabPosition()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    return v0
.end method

.method protected getOuterContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mOuterContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getUserContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mUserContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 475
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBar;->setBarVisibility(I)V

    .line 476
    return-void
.end method

.method public hideShadow()V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mShadowView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mShadowView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 830
    :cond_0
    return-void
.end method

.method public ignoreNightMode()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This BottomBar already has items! You must call ignoreNightMode() before setting any items."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIgnoreNightMode:Z

    .line 645
    return-void
.end method

.method protected isShy()Z
    .locals 1

    .prologue
    .line 1085
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIsShy:Z

    return v0
.end method

.method public makeBadgeForTabAt(III)Lcom/roughike/bottombar/BottomBarBadge;
    .locals 6
    .param p1, "tabPosition"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "initialCount"    # I

    .prologue
    .line 733
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 734
    :cond_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "You have no BottomBar Tabs set yet. Please set them first before calling the makeBadgeForTabAt() method."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 736
    :cond_1
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-gt p1, v3, :cond_2

    if-gez p1, :cond_3

    .line 737
    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cant make a Badge for Tab index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". You have no BottomBar Tabs at that position."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 741
    :cond_3
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 743
    .local v2, "tab":Landroid/view/View;
    new-instance v0, Lcom/roughike/bottombar/BottomBarBadge;

    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1, v2, p2}, Lcom/roughike/bottombar/BottomBarBadge;-><init>(Landroid/content/Context;ILandroid/view/View;I)V

    .line 745
    .local v0, "badge":Lcom/roughike/bottombar/BottomBarBadge;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BOTTOMBAR_BADGE_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/roughike/bottombar/BottomBarBadge;->setTag(Ljava/lang/Object;)V

    .line 746
    invoke-virtual {v0, p3}, Lcom/roughike/bottombar/BottomBarBadge;->setCount(I)V

    .line 748
    new-instance v3, Lcom/roughike/bottombar/BottomBar$1;

    invoke-direct {v3, p0, v2}, Lcom/roughike/bottombar/BottomBar$1;-><init>(Lcom/roughike/bottombar/BottomBar;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    new-instance v3, Lcom/roughike/bottombar/BottomBar$2;

    invoke-direct {v3, p0, v2}, Lcom/roughike/bottombar/BottomBar$2;-><init>(Lcom/roughike/bottombar/BottomBar;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 762
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeMap:Ljava/util/HashMap;

    if-nez v3, :cond_4

    .line 763
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeMap:Ljava/util/HashMap;

    .line 766
    :cond_4
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarBadge;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const/4 v1, 0x1

    .line 770
    .local v1, "canShow":Z
    iget-boolean v3, p0, Lcom/roughike/bottombar/BottomBar;->mIsComingFromRestoredState:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeStateMap:Ljava/util/HashMap;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeStateMap:Ljava/util/HashMap;

    .line 771
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 772
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 775
    :cond_5
    if-eqz v1, :cond_6

    iget v3, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    if-eq v3, p1, :cond_6

    if-eqz p3, :cond_6

    .line 777
    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarBadge;->show()V

    .line 782
    :goto_0
    return-object v0

    .line 779
    :cond_6
    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarBadge;->hide()V

    goto :goto_0
.end method

.method public makeBadgeForTabAt(ILjava/lang/String;I)Lcom/roughike/bottombar/BottomBarBadge;
    .locals 1
    .param p1, "tabPosition"    # I
    .param p2, "backgroundColor"    # Ljava/lang/String;
    .param p3, "initialCount"    # I

    .prologue
    .line 720
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/roughike/bottombar/BottomBar;->makeBadgeForTabAt(III)Lcom/roughike/bottombar/BottomBarBadge;

    move-result-object v0

    return-object v0
.end method

.method public mapColorForTab(II)V
    .locals 3
    .param p1, "tabPosition"    # I
    .param p2, "color"    # I

    .prologue
    .line 563
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 564
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You have no BottomBar Tabs set yet. Please set them first before calling the mapColorForTab method."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_3

    .line 567
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cant map color for Tab index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". You have no BottomBar Tabs at that position."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_3
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIsDarkTheme:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIsShiftingMode:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIsTabletMode:Z

    if-eqz v0, :cond_5

    .line 584
    :cond_4
    :goto_0
    return-void

    .line 573
    :cond_5
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mColorMap:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 574
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mColorMap:Ljava/util/HashMap;

    .line 577
    :cond_6
    iget v0, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    if-ne p1, v0, :cond_7

    iget v0, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentBackgroundColor:I

    if-eq v0, p2, :cond_7

    .line 579
    iput p2, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentBackgroundColor:I

    .line 580
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 583
    :cond_7
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mColorMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public mapColorForTab(ILjava/lang/String;)V
    .locals 1
    .param p1, "tabPosition"    # I
    .param p2, "color"    # Ljava/lang/String;

    .prologue
    .line 594
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/roughike/bottombar/BottomBar;->mapColorForTab(II)V

    .line 595
    return-void
.end method

.method public noNavBarGoodness()V
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v0, :cond_0

    .line 838
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This BottomBar already has items! You must call noNavBarGoodness() before setting the items, preferably right after attaching it to your layout."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mDrawBehindNavBar:Z

    .line 844
    return-void
.end method

.method public noResizeGoodness()V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v0, :cond_0

    .line 867
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This BottomBar already has items! You must call noResizeGoodness() before setting the items, preferably right after attaching it to your layout."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIgnoreShiftingResize:Z

    .line 873
    return-void
.end method

.method public noScalingGoodness()V
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v0, :cond_0

    .line 881
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This BottomBar already has items! You must call noScalingGoodness() before setting the items, preferably right after attaching it to your layout."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIgnoreScalingResize:Z

    .line 887
    return-void
.end method

.method public noTabletGoodness()V
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v0, :cond_0

    .line 852
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This BottomBar already has items! You must call noTabletGoodness() before setting the items, preferably right after attaching it to your layout."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIgnoreTabletLayout:Z

    .line 858
    return-void
.end method

.method public noTopOffset()V
    .locals 1

    .prologue
    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mUseTopOffset:Z

    .line 943
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1149
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->handleClick(Landroid/view/View;)V

    .line 1150
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1442
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 1443
    if-eqz p1, :cond_0

    .line 1444
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->updateTitleBottomPadding()V

    .line 1446
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1280
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->handleLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 522
    const-string v3, "STATE_CURRENT_SELECTED_TAB"

    iget v4, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 524
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeMap:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 525
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeStateMap:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 526
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeStateMap:Ljava/util/HashMap;

    .line 529
    :cond_0
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 530
    .local v2, "key":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/roughike/bottombar/BottomBar;->mOuterContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeMap:Ljava/util/HashMap;

    .line 531
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roughike/bottombar/BottomBarBadge;

    .line 533
    .local v0, "badgeCandidate":Lcom/roughike/bottombar/BottomBarBadge;
    if-eqz v0, :cond_1

    .line 534
    iget-object v4, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeStateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarBadge;->isVisible()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 538
    .end local v0    # "badgeCandidate":Lcom/roughike/bottombar/BottomBarBadge;
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_2
    const-string v3, "STATE_BADGE_STATES_BUNDLE"

    iget-object v4, p0, Lcom/roughike/bottombar/BottomBar;->mBadgeStateMap:Ljava/util/HashMap;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 541
    :cond_3
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentManager:Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentContainer:I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    instance-of v3, v3, [Lcom/roughike/bottombar/BottomBarFragment;

    if-eqz v3, :cond_4

    .line 545
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    iget v4, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    aget-object v1, v3, v4

    check-cast v1, Lcom/roughike/bottombar/BottomBarFragment;

    .line 547
    .local v1, "bottomBarFragment":Lcom/roughike/bottombar/BottomBarFragment;
    invoke-virtual {v1}, Lcom/roughike/bottombar/BottomBarFragment;->getFragment()Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 548
    invoke-virtual {v1}, Lcom/roughike/bottombar/BottomBarFragment;->getFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 553
    .end local v1    # "bottomBarFragment":Lcom/roughike/bottombar/BottomBarFragment;
    :cond_4
    :goto_1
    return-void

    .line 549
    .restart local v1    # "bottomBarFragment":Lcom/roughike/bottombar/BottomBarFragment;
    :cond_5
    invoke-virtual {v1}, Lcom/roughike/bottombar/BottomBarFragment;->getSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 550
    invoke-virtual {v1}, Lcom/roughike/bottombar/BottomBarFragment;->getSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public selectTabAtPosition(IZ)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 423
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 424
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t select tab at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". This BottomBar has no items set yet."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 426
    :cond_1
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-gt p1, v2, :cond_2

    if-gez p1, :cond_3

    .line 427
    :cond_2
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t select tab at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". This BottomBar has no items at that position."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :cond_3
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    const-string v3, "BOTTOM_BAR_VIEW_ACTIVE"

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 432
    .local v1, "oldTab":Landroid/view/View;
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 434
    .local v0, "newTab":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Lcom/roughike/bottombar/BottomBar;->unselectTab(Landroid/view/View;Z)V

    .line 435
    invoke-direct {p0, v0, p2}, Lcom/roughike/bottombar/BottomBar;->selectTab(Landroid/view/View;Z)V

    .line 437
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->updateSelectedTab(I)V

    .line 438
    invoke-direct {p0, v1, v0, p2}, Lcom/roughike/bottombar/BottomBar;->shiftingMagic(Landroid/view/View;Landroid/view/View;Z)V

    .line 439
    return-void
.end method

.method public setActiveTabColor(I)V
    .locals 2
    .param p1, "activeTabColor"    # I

    .prologue
    .line 669
    iput p1, p0, Lcom/roughike/bottombar/BottomBar;->mCustomActiveTabColor:I

    .line 671
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 672
    iget v0, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/roughike/bottombar/BottomBar;->selectTabAtPosition(IZ)V

    .line 674
    :cond_0
    return-void
.end method

.method public setActiveTabColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "activeTabColor"    # Ljava/lang/String;

    .prologue
    .line 657
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBar;->setActiveTabColor(I)V

    .line 658
    return-void
.end method

.method protected setBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1117
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIsShy:Z

    if-eqz v0, :cond_2

    .line 1118
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBar;->toggleShyVisibility(Z)V

    .line 1133
    :cond_0
    :goto_1
    return-void

    .line 1118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1122
    :cond_2
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mOuterContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 1123
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mOuterContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1126
    :cond_3
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1127
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    :cond_4
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mBackgroundOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mBackgroundOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setDefaultTabPosition(I)V
    .locals 3
    .param p1, "defaultTabPosition"    # I

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mIsComingFromRestoredState:Z

    if-eqz v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-nez v0, :cond_1

    .line 451
    iput p1, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    goto :goto_0

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    array-length v0, v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_3

    .line 455
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set default tab at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". This BottomBar has no items at that position."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/roughike/bottombar/BottomBar;->selectTabAtPosition(IZ)V

    goto :goto_0
.end method

.method public setFixedInactiveIconColor(I)V
    .locals 2
    .param p1, "iconColor"    # I

    .prologue
    .line 684
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mInActiveColor:Ljava/lang/Integer;

    .line 686
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 687
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This BottomBar already has items! You must call setFixedInactiveIconColor() before setting any items."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_0
    return-void
.end method

.method public varargs setFragmentItems(Landroid/app/FragmentManager;I[Lcom/roughike/bottombar/BottomBarFragment;)V
    .locals 5
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "containerResource"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3, "fragmentItems"    # [Lcom/roughike/bottombar/BottomBarFragment;

    .prologue
    .line 256
    array-length v2, p3

    if-lez v2, :cond_1

    .line 257
    const/4 v1, 0x0

    .line 259
    .local v1, "index":I
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p3, v2

    .line 260
    .local v0, "fragmentItem":Lcom/roughike/bottombar/BottomBarFragment;
    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarFragment;->getFragment()Landroid/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_0

    .line 261
    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarFragment;->getSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 262
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conflict: cannot use android.app.FragmentManager to handle a android.support.v4.app.Fragment object at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". If you want BottomBar to handle support Fragments, use getSupportFragment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Manager() instead of getFragmentManager()."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 268
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "fragmentItem":Lcom/roughike/bottombar/BottomBarFragment;
    .end local v1    # "index":I
    :cond_1
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->clearItems()V

    .line 273
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentManager:Ljava/lang/Object;

    .line 274
    iput p2, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentContainer:I

    .line 275
    iput-object p3, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    .line 276
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    invoke-direct {p0, v2}, Lcom/roughike/bottombar/BottomBar;->updateItems([Lcom/roughike/bottombar/BottomBarItemBase;)V

    .line 277
    return-void
.end method

.method public varargs setFragmentItems(Landroid/support/v4/app/FragmentManager;I[Lcom/roughike/bottombar/BottomBarFragment;)V
    .locals 5
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "containerResource"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3, "fragmentItems"    # [Lcom/roughike/bottombar/BottomBarFragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    array-length v2, p3

    if-lez v2, :cond_1

    .line 298
    const/4 v1, 0x0

    .line 300
    .local v1, "index":I
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p3, v2

    .line 301
    .local v0, "fragmentItem":Lcom/roughike/bottombar/BottomBarFragment;
    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarFragment;->getSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_0

    .line 302
    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarFragment;->getFragment()Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 303
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conflict: cannot use android.support.v4.app.FragmentManager to handle a android.app.Fragment object at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". If you want BottomBar to handle normal Fragments, use getFragment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Manager() instead of getSupportFragmentManager()."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "fragmentItem":Lcom/roughike/bottombar/BottomBarFragment;
    .end local v1    # "index":I
    :cond_1
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->clearItems()V

    .line 313
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentManager:Ljava/lang/Object;

    .line 314
    iput p2, p0, Lcom/roughike/bottombar/BottomBar;->mFragmentContainer:I

    .line 315
    iput-object p3, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    .line 316
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    invoke-direct {p0, v2}, Lcom/roughike/bottombar/BottomBar;->updateItems([Lcom/roughike/bottombar/BottomBarItemBase;)V

    .line 317
    return-void
.end method

.method public setItems(I)V
    .locals 1
    .param p1, "menuRes"    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->clearItems()V

    .line 342
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/roughike/bottombar/MiscUtils;->inflateMenuFromResource(Landroid/app/Activity;I)[Lcom/roughike/bottombar/BottomBarTab;

    move-result-object v0

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    .line 343
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    invoke-direct {p0, v0}, Lcom/roughike/bottombar/BottomBar;->updateItems([Lcom/roughike/bottombar/BottomBarItemBase;)V

    .line 344
    return-void
.end method

.method public varargs setItems([Lcom/roughike/bottombar/BottomBarTab;)V
    .locals 1
    .param p1, "bottomBarTabs"    # [Lcom/roughike/bottombar/BottomBarTab;

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->clearItems()V

    .line 329
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    .line 330
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    invoke-direct {p0, v0}, Lcom/roughike/bottombar/BottomBar;->updateItems([Lcom/roughike/bottombar/BottomBarItemBase;)V

    .line 331
    return-void
.end method

.method public setItemsFromMenu(ILcom/roughike/bottombar/OnMenuTabClickListener;)V
    .locals 2
    .param p1, "menuRes"    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/roughike/bottombar/OnMenuTabClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->clearItems()V

    .line 365
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/roughike/bottombar/MiscUtils;->inflateMenuFromResource(Landroid/app/Activity;I)[Lcom/roughike/bottombar/BottomBarTab;

    move-result-object v0

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    .line 366
    iput-object p2, p0, Lcom/roughike/bottombar/BottomBar;->mMenuListener:Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    invoke-direct {p0, v0}, Lcom/roughike/bottombar/BottomBar;->updateItems([Lcom/roughike/bottombar/BottomBarItemBase;)V

    .line 369
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    instance-of v0, v0, [Lcom/roughike/bottombar/BottomBarTab;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    aget-object v0, v0, v1

    check-cast v0, Lcom/roughike/bottombar/BottomBarTab;

    iget v0, v0, Lcom/roughike/bottombar/BottomBarTab;->id:I

    invoke-interface {p2, v0}, Lcom/roughike/bottombar/OnMenuTabClickListener;->onMenuTabSelected(I)V

    .line 373
    :cond_0
    return-void
.end method

.method public setItemsFromMenu(ILcom/roughike/bottombar/OnMenuTabSelectedListener;)V
    .locals 1
    .param p1, "menuRes"    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/roughike/bottombar/OnMenuTabSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->clearItems()V

    .line 353
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/roughike/bottombar/MiscUtils;->inflateMenuFromResource(Landroid/app/Activity;I)[Lcom/roughike/bottombar/BottomBarTab;

    move-result-object v0

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    .line 354
    iput-object p2, p0, Lcom/roughike/bottombar/BottomBar;->mMenuListener:Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    invoke-direct {p0, v0}, Lcom/roughike/bottombar/BottomBar;->updateItems([Lcom/roughike/bottombar/BottomBarItemBase;)V

    .line 356
    return-void
.end method

.method public setMaxFixedTabs(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 494
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v0, :cond_0

    .line 495
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This BottomBar already has items! You must call the setMaxFixedTabs() method before specifying any items."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    iput p1, p0, Lcom/roughike/bottombar/BottomBar;->mMaxFixedTabCount:I

    .line 500
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/roughike/bottombar/OnTabSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/roughike/bottombar/OnTabSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 380
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar;->mListener:Ljava/lang/Object;

    .line 381
    return-void
.end method

.method public setOnMenuTabClickListener(Lcom/roughike/bottombar/OnMenuTabClickListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/roughike/bottombar/OnMenuTabClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 409
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar;->mMenuListener:Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mMenuListener:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    instance-of v0, v0, [Lcom/roughike/bottombar/BottomBarTab;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    aget-object v0, v0, v1

    check-cast v0, Lcom/roughike/bottombar/BottomBarTab;

    iget v0, v0, Lcom/roughike/bottombar/BottomBarTab;->id:I

    invoke-interface {p1, v0}, Lcom/roughike/bottombar/OnMenuTabClickListener;->onMenuTabSelected(I)V

    .line 415
    :cond_0
    return-void
.end method

.method public setOnTabClickListener(Lcom/roughike/bottombar/OnTabClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/roughike/bottombar/OnTabClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 392
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar;->mListener:Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mListener:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 395
    iget v0, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    invoke-interface {p1, v0}, Lcom/roughike/bottombar/OnTabClickListener;->onTabSelected(I)V

    .line 397
    :cond_0
    return-void
.end method

.method public setShiftingIconColor(I)V
    .locals 2
    .param p1, "iconColor"    # I

    .prologue
    .line 701
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mWhiteColor:Ljava/lang/Integer;

    .line 703
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 704
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This BottomBar already has items! You must call setShiftingIconColor() before setting any items."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_0
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 4
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 812
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 813
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 814
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 815
    .local v0, "bottomBarTab":Landroid/view/View;
    sget v3, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 816
    .local v2, "title":Landroid/widget/TextView;
    invoke-static {v2, p1}, Lcom/roughike/bottombar/MiscUtils;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 819
    .end local v0    # "bottomBarTab":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_0
    iput p1, p0, Lcom/roughike/bottombar/BottomBar;->mPendingTextAppearance:I

    .line 821
    :cond_1
    return-void
.end method

.method public setTypeFace(Ljava/lang/String;)V
    .locals 5
    .param p1, "typeFacePath"    # Ljava/lang/String;

    .prologue
    .line 792
    iget-object v4, p0, Lcom/roughike/bottombar/BottomBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 795
    .local v3, "typeface":Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 796
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 797
    iget-object v4, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 798
    .local v0, "bottomBarTab":Landroid/view/View;
    sget v4, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_title:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 799
    .local v2, "title":Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 796
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 802
    .end local v0    # "bottomBarTab":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_0
    iput-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mPendingTypeface:Landroid/graphics/Typeface;

    .line 804
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBar;->setBarVisibility(I)V

    .line 483
    return-void
.end method

.method protected shyHeightAlreadyCalculated()V
    .locals 1

    .prologue
    .line 1089
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mShyHeightAlreadyCalculated:Z

    .line 1090
    return-void
.end method

.method protected toggleShyVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1141
    invoke-static {p0}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->from(Landroid/view/View;)Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    move-result-object v0

    .line 1142
    .local v0, "from":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<Lcom/roughike/bottombar/BottomBar;>;"
    if-eqz v0, :cond_0

    .line 1143
    invoke-virtual {v0, p0, p1}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->setHidden(Landroid/view/View;Z)V

    .line 1145
    :cond_0
    return-void
.end method

.method public useDarkTheme()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 614
    iget-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mIsDarkTheme:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 615
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->darkThemeMagic()V

    .line 617
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 618
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 619
    .local v0, "bottomBarTab":Landroid/view/View;
    sget v2, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatImageView;

    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->mWhiteColor:Ljava/lang/Integer;

    .line 620
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatImageView;->setColorFilter(I)V

    .line 622
    iget v2, p0, Lcom/roughike/bottombar/BottomBar;->mCurrentTabPosition:I

    if-ne v1, v2, :cond_0

    .line 623
    invoke-direct {p0, v0, v4}, Lcom/roughike/bottombar/BottomBar;->selectTab(Landroid/view/View;Z)V

    .line 617
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    :cond_0
    invoke-direct {p0, v0, v4}, Lcom/roughike/bottombar/BottomBar;->unselectTab(Landroid/view/View;Z)V

    goto :goto_1

    .line 630
    .end local v0    # "bottomBarTab":Landroid/view/View;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->mIsDarkTheme:Z

    .line 631
    return-void
.end method

.method public useDarkTheme(Z)V
    .locals 0
    .param p1, "darkThemeEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 602
    iput-boolean p1, p0, Lcom/roughike/bottombar/BottomBar;->mIsDarkTheme:Z

    .line 603
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->useDarkTheme()V

    .line 604
    return-void
.end method

.method protected useExtraOffset()Z
    .locals 1

    .prologue
    .line 1093
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mUseExtraOffset:Z

    return v0
.end method

.method public useFixedMode()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->mItems:[Lcom/roughike/bottombar/BottomBarItemBase;

    if-eqz v0, :cond_0

    .line 508
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This BottomBar already has items! You must call the useFixedMode() method before specifying any items."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->mMaxFixedTabCount:I

    .line 513
    return-void
.end method

.method public useOnlyStatusBarTopOffset()V
    .locals 1

    .prologue
    .line 950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mUseOnlyStatusBarOffset:Z

    .line 951
    return-void
.end method

.method protected useOnlyStatusbarOffset()Z
    .locals 1

    .prologue
    .line 1113
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mUseOnlyStatusBarOffset:Z

    return v0
.end method

.method protected useTopOffset()Z
    .locals 1

    .prologue
    .line 1109
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->mUseTopOffset:Z

    return v0
.end method
