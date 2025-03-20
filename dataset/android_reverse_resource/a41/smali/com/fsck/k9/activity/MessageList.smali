.class public Lcom/fsck/k9/activity/MessageList;
.super Lcom/fsck/k9/activity/K9Activity;
.source "MessageList.java"

# interfaces
.implements Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;
.implements Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;
.implements Lcom/fsck/k9/view/ViewSwitcher$OnSwitchCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;,
        Lcom/fsck/k9/activity/MessageList$DisplayMode;
    }
.end annotation


# static fields
.field private static final ACTION_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final EXTRA_MESSAGE_REFERENCE:Ljava/lang/String; = "message_reference"

.field private static final EXTRA_NO_THREADING:Ljava/lang/String; = "no_threading"

.field private static final EXTRA_SEARCH:Ljava/lang/String; = "search_bytes"

.field public static final EXTRA_SEARCH_ACCOUNT:Ljava/lang/String; = "com.fsck.k9.search_account"

.field private static final EXTRA_SEARCH_FOLDER:Ljava/lang/String; = "com.fsck.k9.search_folder"

.field private static final EXTRA_SEARCH_OLD:Ljava/lang/String; = "search"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EXTRA_SPECIAL_FOLDER:Ljava/lang/String; = "special_folder"

.field private static final NEXT:I = 0x2

.field private static final PREVIOUS:I = 0x1

.field public static final REQUEST_MASK_PENDING_INTENT:I = 0x10000

.field private static final STATE_DISPLAY_MODE:Ljava/lang/String; = "displayMode"

.field private static final STATE_FIRST_BACK_STACK_ID:Ljava/lang/String; = "firstBackstackId"

.field private static final STATE_MESSAGE_LIST_WAS_DISPLAYED:Ljava/lang/String; = "messageListWasDisplayed"


# instance fields
.field private mAccount:Lcom/fsck/k9/Account;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMessageList:Landroid/view/View;

.field private mActionBarMessageView:Landroid/view/View;

.field private mActionBarProgress:Landroid/widget/ProgressBar;

.field private mActionBarSubTitle:Landroid/widget/TextView;

.field private mActionBarSubject:Lcom/fsck/k9/view/MessageTitleView;

.field private mActionBarTitle:Landroid/widget/TextView;

.field private mActionBarUnread:Landroid/widget/TextView;

.field private mActionButtonIndeterminateProgress:Landroid/view/View;

.field private mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

.field private mFirstBackStackId:I

.field private mFolderName:Ljava/lang/String;

.field private mLastDirection:I

.field private mMenu:Landroid/view/Menu;

.field private mMenuButtonCheckMail:Landroid/view/MenuItem;

.field private mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

.field private mMessageListWasDisplayed:Z

.field private mMessageReference:Lcom/fsck/k9/activity/MessageReference;

.field private mMessageViewContainer:Landroid/view/ViewGroup;

.field private mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

.field private mMessageViewPlaceHolder:Landroid/view/View;

.field private mNoThreading:Z

.field private mSearch:Lcom/fsck/k9/search/LocalSearch;

.field private mSingleAccountMode:Z

.field private mSingleFolderMode:Z

.field private mStorageListener:Lcom/fsck/k9/mailstore/StorageManager$StorageListener;

.field private mViewSwitcher:Lcom/fsck/k9/view/ViewSwitcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9Activity;-><init>()V

    .line 154
    new-instance v0, Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;-><init>(Lcom/fsck/k9/activity/MessageList;Lcom/fsck/k9/activity/MessageList$1;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mStorageListener:Lcom/fsck/k9/mailstore/StorageManager$StorageListener;

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/fsck/k9/activity/MessageList;->mFirstBackStackId:I

    .line 181
    invoke-static {}, Lcom/fsck/k9/K9;->messageViewShowNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/fsck/k9/activity/MessageList;->mLastDirection:I

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListWasDisplayed:Z

    return-void

    .line 181
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageList;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method public static actionDisplayMessageIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    const-string v1, "message_reference"

    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->toIdentityString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    return-object v0
.end method

.method public static actionDisplaySearch(Landroid/content/Context;Lcom/fsck/k9/search/SearchSpecification;ZZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "search"    # Lcom/fsck/k9/search/SearchSpecification;
    .param p2, "noThreading"    # Z
    .param p3, "newTask"    # Z

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/fsck/k9/activity/MessageList;->actionDisplaySearch(Landroid/content/Context;Lcom/fsck/k9/search/SearchSpecification;ZZZ)V

    .line 104
    return-void
.end method

.method public static actionDisplaySearch(Landroid/content/Context;Lcom/fsck/k9/search/SearchSpecification;ZZZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "search"    # Lcom/fsck/k9/search/SearchSpecification;
    .param p2, "noThreading"    # Z
    .param p3, "newTask"    # Z
    .param p4, "clearTop"    # Z

    .prologue
    .line 108
    .line 109
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/MessageList;->intentDisplaySearch(Landroid/content/Context;Lcom/fsck/k9/search/SearchSpecification;ZZZ)Landroid/content/Intent;

    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method private addMessageListFragment(Lcom/fsck/k9/fragment/MessageListFragment;Z)V
    .locals 3
    .param p1, "fragment"    # Lcom/fsck/k9/fragment/MessageListFragment;
    .param p2, "addToBackStack"    # Z

    .prologue
    .line 1336
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1338
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const v2, 0x7f0c00bd

    invoke-virtual {v0, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1339
    if-eqz p2, :cond_0

    .line 1340
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1342
    :cond_0
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    .line 1344
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    move-result v1

    .line 1345
    .local v1, "transactionId":I
    if-ltz v1, :cond_1

    iget v2, p0, Lcom/fsck/k9/activity/MessageList;->mFirstBackStackId:I

    if-gez v2, :cond_1

    .line 1346
    iput v1, p0, Lcom/fsck/k9/activity/MessageList;->mFirstBackStackId:I

    .line 1348
    :cond_1
    return-void
.end method

.method private configureMenu(Landroid/view/Menu;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1000
    if-nez p1, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1005
    :cond_1
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    if-nez v9, :cond_4

    .line 1006
    const v9, 0x7f0c0110

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1007
    const v9, 0x7f0c0121

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1019
    :goto_1
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v10, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 1021
    invoke-virtual {v9}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isInitialized()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1022
    :cond_2
    const v9, 0x7f0c0151

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1023
    const v9, 0x7f0c0150

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1024
    const v9, 0x7f0c0153

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1025
    const v9, 0x7f0c013e

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1026
    const v9, 0x7f0c0118

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1027
    const v9, 0x7f0c0141

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1028
    const v9, 0x7f0c0142

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1029
    const v9, 0x7f0c0143

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1030
    const v9, 0x7f0c0146

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1031
    const v9, 0x7f0c0155

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1032
    const v9, 0x7f0c015a

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1033
    const v9, 0x7f0c0167

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1034
    const v9, 0x7f0c0168

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1035
    const v9, 0x7f0c015b

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1036
    const v9, 0x7f0c015c

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1128
    :goto_2
    const v9, 0x7f0c0116

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1129
    const v9, 0x7f0c0152

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1131
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v10, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-eq v9, v10, :cond_3

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    .line 1132
    invoke-virtual {v9}, Lcom/fsck/k9/fragment/MessageListFragment;->isInitialized()Z

    move-result v9

    if-nez v9, :cond_15

    .line 1133
    :cond_3
    const v9, 0x7f0c0117

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1134
    const v9, 0x7f0c015d

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1135
    const v9, 0x7f0c0147

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1136
    const v9, 0x7f0c0127

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1137
    const v9, 0x7f0c0166

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1138
    const v9, 0x7f0c0165

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1139
    const v9, 0x7f0c0169

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1009
    :cond_4
    const v9, 0x7f0c0110

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    .line 1010
    invoke-virtual {v10}, Lcom/fsck/k9/fragment/MessageListFragment;->isSingleAccountMode()Z

    move-result v10

    .line 1009
    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1011
    const v9, 0x7f0c0121

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    .line 1012
    invoke-virtual {v10}, Lcom/fsck/k9/fragment/MessageListFragment;->isSingleFolderMode()Z

    move-result v10

    .line 1011
    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1039
    :cond_5
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v10, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-eq v9, v10, :cond_6

    .line 1040
    const v9, 0x7f0c0151

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1041
    const v9, 0x7f0c0150

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1058
    :goto_3
    const v9, 0x7f0c0168

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 1059
    .local v8, "toggleTheme":Landroid/view/MenuItem;
    invoke-static {}, Lcom/fsck/k9/K9;->useFixedMessageViewTheme()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1060
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1072
    :goto_4
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v9}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isMessageRead()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1073
    const v9, 0x7f0c015a

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f070290

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1079
    :goto_5
    const v9, 0x7f0c0167

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-ge v9, v11, :cond_f

    const/4 v9, 0x1

    :goto_6
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1081
    const v9, 0x7f0c013e

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/fsck/k9/K9;->isMessageViewDeleteActionVisible()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1086
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v9}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isCopyCapable()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1087
    const v9, 0x7f0c0143

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/fsck/k9/K9;->isMessageViewCopyActionVisible()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1088
    const v9, 0x7f0c0159

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1094
    :goto_7
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v9}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isMoveCapable()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1095
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v9}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->canMessageBeArchived()Z

    move-result v2

    .line 1096
    .local v2, "canMessageBeArchived":Z
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v9}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->canMessageBeMovedToSpam()Z

    move-result v3

    .line 1098
    .local v3, "canMessageBeMovedToSpam":Z
    const v9, 0x7f0c0142

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/fsck/k9/K9;->isMessageViewMoveActionVisible()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1099
    const v9, 0x7f0c0141

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    if-eqz v2, :cond_11

    .line 1100
    invoke-static {}, Lcom/fsck/k9/K9;->isMessageViewArchiveActionVisible()Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v9, 0x1

    .line 1099
    :goto_8
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1101
    const v9, 0x7f0c0146

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    if-eqz v3, :cond_12

    .line 1102
    invoke-static {}, Lcom/fsck/k9/K9;->isMessageViewSpamActionVisible()Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v9, 0x1

    .line 1101
    :goto_9
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1104
    const v9, 0x7f0c0158

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1105
    const v9, 0x7f0c0156

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1106
    const v9, 0x7f0c0157

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1115
    .end local v2    # "canMessageBeArchived":Z
    .end local v3    # "canMessageBeMovedToSpam":Z
    :goto_a
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v9}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->allHeadersVisible()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1116
    const v9, 0x7f0c015b

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1043
    .end local v8    # "toggleTheme":Landroid/view/MenuItem;
    :cond_6
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v9}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lcom/fsck/k9/activity/MessageReference;

    move-result-object v7

    .line 1044
    .local v7, "ref":Lcom/fsck/k9/activity/MessageReference;
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    .line 1045
    invoke-virtual {v9}, Lcom/fsck/k9/fragment/MessageListFragment;->isLoadFinished()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v4, 0x1

    .line 1046
    .local v4, "initialized":Z
    :goto_b
    if-eqz v4, :cond_8

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v9, v7}, Lcom/fsck/k9/fragment/MessageListFragment;->isFirst(Lcom/fsck/k9/activity/MessageReference;)Z

    move-result v9

    if-nez v9, :cond_8

    const/4 v1, 0x1

    .line 1047
    .local v1, "canDoPrev":Z
    :goto_c
    if-eqz v4, :cond_9

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v9, v7}, Lcom/fsck/k9/fragment/MessageListFragment;->isLast(Lcom/fsck/k9/activity/MessageReference;)Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v0, 0x1

    .line 1049
    .local v0, "canDoNext":Z
    :goto_d
    const v9, 0x7f0c0150

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1050
    .local v6, "prev":Landroid/view/MenuItem;
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1051
    invoke-interface {v6}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v1, :cond_a

    const/16 v9, 0xff

    :goto_e
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1053
    const v9, 0x7f0c0151

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1054
    .local v5, "next":Landroid/view/MenuItem;
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1055
    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v0, :cond_b

    const/16 v9, 0xff

    :goto_f
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_3

    .line 1045
    .end local v0    # "canDoNext":Z
    .end local v1    # "canDoPrev":Z
    .end local v4    # "initialized":Z
    .end local v5    # "next":Landroid/view/MenuItem;
    .end local v6    # "prev":Landroid/view/MenuItem;
    :cond_7
    const/4 v4, 0x0

    goto :goto_b

    .line 1046
    .restart local v4    # "initialized":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_c

    .line 1047
    .restart local v1    # "canDoPrev":Z
    :cond_9
    const/4 v0, 0x0

    goto :goto_d

    .line 1051
    .restart local v0    # "canDoNext":Z
    .restart local v6    # "prev":Landroid/view/MenuItem;
    :cond_a
    const/16 v9, 0x7f

    goto :goto_e

    .line 1055
    .restart local v5    # "next":Landroid/view/MenuItem;
    :cond_b
    const/16 v9, 0x7f

    goto :goto_f

    .line 1063
    .end local v0    # "canDoNext":Z
    .end local v1    # "canDoPrev":Z
    .end local v4    # "initialized":Z
    .end local v5    # "next":Landroid/view/MenuItem;
    .end local v6    # "prev":Landroid/view/MenuItem;
    .end local v7    # "ref":Lcom/fsck/k9/activity/MessageReference;
    .restart local v8    # "toggleTheme":Landroid/view/MenuItem;
    :cond_c
    invoke-static {}, Lcom/fsck/k9/K9;->getK9MessageViewTheme()Lcom/fsck/k9/K9$Theme;

    move-result-object v9

    sget-object v10, Lcom/fsck/k9/K9$Theme;->DARK:Lcom/fsck/k9/K9$Theme;

    if-ne v9, v10, :cond_d

    .line 1064
    const v9, 0x7f0702bc

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1068
    :goto_10
    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 1066
    :cond_d
    const v9, 0x7f0702bb

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_10

    .line 1075
    :cond_e
    const v9, 0x7f0c015a

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f07028f

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 1079
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 1090
    :cond_10
    const v9, 0x7f0c0143

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1091
    const v9, 0x7f0c0159

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1100
    .restart local v2    # "canMessageBeArchived":Z
    .restart local v3    # "canMessageBeMovedToSpam":Z
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 1102
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 1108
    .end local v2    # "canMessageBeArchived":Z
    .end local v3    # "canMessageBeMovedToSpam":Z
    :cond_13
    const v9, 0x7f0c0142

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1109
    const v9, 0x7f0c0141

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1110
    const v9, 0x7f0c0146

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1112
    const v9, 0x7f0c0155

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    .line 1118
    :cond_14
    const v9, 0x7f0c015c

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1141
    .end local v8    # "toggleTheme":Landroid/view/MenuItem;
    :cond_15
    const v9, 0x7f0c015d

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1142
    const v9, 0x7f0c0147

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1143
    const v9, 0x7f0c0118

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1144
    const v9, 0x7f0c0165

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    .line 1145
    invoke-virtual {v10}, Lcom/fsck/k9/fragment/MessageListFragment;->isMarkAllAsReadSupported()Z

    move-result v10

    .line 1144
    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1147
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v9}, Lcom/fsck/k9/fragment/MessageListFragment;->isSingleAccountMode()Z

    move-result v9

    if-nez v9, :cond_16

    .line 1148
    const v9, 0x7f0c0166

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1149
    const v9, 0x7f0c0127

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1150
    const v9, 0x7f0c0169

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1158
    :goto_11
    const v9, 0x7f0c0117

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v10}, Lcom/fsck/k9/fragment/MessageListFragment;->isCheckMailSupported()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1161
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v9}, Lcom/fsck/k9/fragment/MessageListFragment;->isRemoteSearch()Z

    move-result v9

    if-nez v9, :cond_18

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    .line 1162
    invoke-virtual {v9}, Lcom/fsck/k9/fragment/MessageListFragment;->isRemoteSearchAllowed()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1163
    const v9, 0x7f0c0152

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1152
    :cond_16
    const v9, 0x7f0c0127

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v10}, Lcom/fsck/k9/fragment/MessageListFragment;->isOutbox()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1153
    const v9, 0x7f0c0166

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v9}, Lcom/fsck/k9/fragment/MessageListFragment;->isRemoteFolder()Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    .line 1154
    invoke-virtual {v9}, Lcom/fsck/k9/fragment/MessageListFragment;->isAccountExpungeCapable()Z

    move-result v9

    if-eqz v9, :cond_17

    const/4 v9, 0x1

    .line 1153
    :goto_12
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1155
    const v9, 0x7f0c0169

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_11

    .line 1154
    :cond_17
    const/4 v9, 0x0

    goto :goto_12

    .line 1164
    :cond_18
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v9}, Lcom/fsck/k9/fragment/MessageListFragment;->isManualSearch()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1165
    const v9, 0x7f0c0116

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method private decodeExtras(Landroid/content/Intent;)Z
    .locals 23
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 389
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 390
    .local v9, "action":Ljava/lang/String;
    const-string v19, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    if-eqz v19, :cond_8

    .line 391
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    .line 392
    .local v18, "uri":Landroid/net/Uri;
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    .line 394
    .local v16, "segmentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 395
    .local v4, "accountId":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Preferences;->getAvailableAccounts()Ljava/util/Collection;

    move-result-object v7

    .line 396
    .local v7, "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/Account;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/Account;

    .line 397
    .local v3, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 398
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 399
    .local v11, "folderName":Ljava/lang/String;
    const/16 v19, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 400
    .local v13, "messageUid":Ljava/lang/String;
    new-instance v19, Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v11, v13, v2}, Lcom/fsck/k9/activity/MessageReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Flag;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageList;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 447
    .end local v3    # "account":Lcom/fsck/k9/Account;
    .end local v4    # "accountId":Ljava/lang/String;
    .end local v7    # "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/Account;>;"
    .end local v11    # "folderName":Ljava/lang/String;
    .end local v13    # "messageUid":Ljava/lang/String;
    .end local v16    # "segmentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 448
    const-string v19, "message_reference"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 449
    .local v12, "messageReferenceString":Ljava/lang/String;
    invoke-static {v12}, Lcom/fsck/k9/activity/MessageReference;->parse(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageList;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 452
    .end local v12    # "messageReferenceString":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 453
    new-instance v19, Lcom/fsck/k9/search/LocalSearch;

    invoke-direct/range {v19 .. v19}, Lcom/fsck/k9/search/LocalSearch;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/search/LocalSearch;->addAllowedFolder(Ljava/lang/String;)V

    .line 458
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 460
    const-string v19, "account"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, "accountUuid":Ljava/lang/String;
    const-string v19, "folder"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 463
    .restart local v11    # "folderName":Ljava/lang/String;
    new-instance v19, Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v19, v0

    if-nez v5, :cond_4

    const-string v5, "invalid"

    .end local v5    # "accountUuid":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 465
    if-eqz v11, :cond_5

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/fsck/k9/search/LocalSearch;->addAllowedFolder(Ljava/lang/String;)V

    .line 470
    .end local v11    # "folderName":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v14

    .line 472
    .local v14, "prefs":Lcom/fsck/k9/Preferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/search/LocalSearch;->getAccountUuids()[Ljava/lang/String;

    move-result-object v6

    .line 473
    .local v6, "accountUuids":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/search/LocalSearch;->searchAllAccounts()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 474
    invoke-virtual {v14}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v8

    .line 475
    .local v8, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/MessageList;->mSingleAccountMode:Z

    .line 476
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/activity/MessageList;->mSingleAccountMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 477
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/fsck/k9/Account;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    .line 485
    .end local v8    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/activity/MessageList;->mSingleAccountMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/search/LocalSearch;->getFolderNames()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/MessageList;->mSingleFolderMode:Z

    .line 487
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/activity/MessageList;->mSingleAccountMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_13

    .line 488
    :cond_7
    const-string v19, "not opening MessageList of unavailable account"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageList;->onAccountUnavailable()V

    .line 490
    const/16 v19, 0x0

    .line 500
    :goto_4
    return v19

    .line 404
    .end local v6    # "accountUuids":[Ljava/lang/String;
    .end local v14    # "prefs":Lcom/fsck/k9/Preferences;
    :cond_8
    const-string v19, "shortcut"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 406
    const-string v19, "special_folder"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 407
    .local v17, "specialFolder":Ljava/lang/String;
    const-string v19, "unified_inbox"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 408
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/search/SearchAccount;->createUnifiedInboxAccount(Landroid/content/Context;)Lcom/fsck/k9/search/SearchAccount;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/search/SearchAccount;->getRelatedSearch()Lcom/fsck/k9/search/LocalSearch;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    goto/16 :goto_0

    .line 409
    :cond_9
    const-string v19, "all_messages"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 410
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/search/SearchAccount;->createAllMessagesAccount(Landroid/content/Context;)Lcom/fsck/k9/search/SearchAccount;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/search/SearchAccount;->getRelatedSearch()Lcom/fsck/k9/search/LocalSearch;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    goto/16 :goto_0

    .line 412
    .end local v17    # "specialFolder":Ljava/lang/String;
    :cond_a
    const-string v19, "query"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_c

    .line 414
    const-string v19, "android.intent.action.SEARCH"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 416
    const-string v19, "query"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 418
    .local v15, "query":Ljava/lang/String;
    new-instance v19, Lcom/fsck/k9/search/LocalSearch;

    const v20, 0x7f070339

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/search/LocalSearch;->setManualSearch(Z)V

    .line 420
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/MessageList;->mNoThreading:Z

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v19, v0

    new-instance v20, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    sget-object v21, Lcom/fsck/k9/search/SearchSpecification$SearchField;->SENDER:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v22, Lcom/fsck/k9/search/SearchSpecification$Attribute;->CONTAINS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v15}, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;-><init>(Lcom/fsck/k9/search/SearchSpecification$SearchField;Lcom/fsck/k9/search/SearchSpecification$Attribute;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/search/LocalSearch;->or(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v19, v0

    new-instance v20, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    sget-object v21, Lcom/fsck/k9/search/SearchSpecification$SearchField;->SUBJECT:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v22, Lcom/fsck/k9/search/SearchSpecification$Attribute;->CONTAINS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v15}, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;-><init>(Lcom/fsck/k9/search/SearchSpecification$SearchField;Lcom/fsck/k9/search/SearchSpecification$Attribute;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/search/LocalSearch;->or(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v19, v0

    new-instance v20, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    sget-object v21, Lcom/fsck/k9/search/SearchSpecification$SearchField;->MESSAGE_CONTENTS:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v22, Lcom/fsck/k9/search/SearchSpecification$Attribute;->CONTAINS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v15}, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;-><init>(Lcom/fsck/k9/search/SearchSpecification$SearchField;Lcom/fsck/k9/search/SearchSpecification$Attribute;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/search/LocalSearch;->or(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 426
    const-string v19, "app_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 427
    .local v10, "appData":Landroid/os/Bundle;
    if-eqz v10, :cond_b

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v19, v0

    const-string v20, "com.fsck.k9.search_account"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 430
    const-string v19, "com.fsck.k9.search_folder"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v19, v0

    const-string v20, "com.fsck.k9.search_folder"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/search/LocalSearch;->addAllowedFolder(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 434
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v19, v0

    const-string v20, "allAccounts"

    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 437
    .end local v10    # "appData":Landroid/os/Bundle;
    .end local v15    # "query":Ljava/lang/String;
    :cond_c
    const-string v19, "search"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 438
    const-string v19, "search"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    .line 439
    const-string v19, "no_threading"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/MessageList;->mNoThreading:Z

    goto/16 :goto_0

    .line 442
    :cond_d
    const-string v19, "search_bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    const-string v19, "search_bytes"

    .line 443
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v19

    sget-object v20, Lcom/fsck/k9/search/LocalSearch;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static/range {v19 .. v20}, Lcom/fsck/k9/helper/ParcelableUtil;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/fsck/k9/search/LocalSearch;

    :goto_5
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    .line 444
    const-string v19, "no_threading"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/MessageList;->mNoThreading:Z

    goto/16 :goto_0

    .line 443
    :cond_e
    const/16 v19, 0x0

    goto :goto_5

    .line 475
    .restart local v6    # "accountUuids":[Ljava/lang/String;
    .restart local v8    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    .restart local v14    # "prefs":Lcom/fsck/k9/Preferences;
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 480
    .end local v8    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    :cond_10
    array-length v0, v6

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    const/16 v19, 0x1

    :goto_6
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/MessageList;->mSingleAccountMode:Z

    .line 481
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/activity/MessageList;->mSingleAccountMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 482
    const/16 v19, 0x0

    aget-object v19, v6, v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    goto/16 :goto_2

    .line 480
    :cond_11
    const/16 v19, 0x0

    goto :goto_6

    .line 485
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 493
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/activity/MessageList;->mSingleFolderMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/search/LocalSearch;->getFolderNames()Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    .line 498
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList;->mActionBarSubTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/activity/MessageList;->mSingleFolderMode:Z

    move/from16 v19, v0

    if-nez v19, :cond_15

    const/16 v19, 0x8

    :goto_7
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 498
    :cond_15
    const/16 v19, 0x0

    goto :goto_7
.end method

.method private displayViews()V
    .locals 3

    .prologue
    .line 364
    sget-object v1, Lcom/fsck/k9/activity/MessageList$2;->$SwitchMap$com$fsck$k9$activity$MessageList$DisplayMode:[I

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageList$DisplayMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 366
    :pswitch_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showMessageList()V

    goto :goto_0

    .line 370
    :pswitch_1
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showMessageView()V

    goto :goto_0

    .line 374
    :pswitch_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListWasDisplayed:Z

    .line 375
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-nez v1, :cond_1

    .line 376
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showMessageViewPlaceHolder()V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lcom/fsck/k9/activity/MessageReference;

    move-result-object v0

    .line 379
    .local v0, "activeMessage":Lcom/fsck/k9/activity/MessageReference;
    if-eqz v0, :cond_0

    .line 380
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->setActiveMessage(Lcom/fsck/k9/activity/MessageReference;)V

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private findFragments()V
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 280
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    const v1, 0x7f0c00bd

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/fragment/MessageListFragment;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    .line 282
    const v1, 0x7f0c00be

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 284
    return-void
.end method

.method private getActionButtonIndeterminateProgress()Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initializeActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 545
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mActionBar:Landroid/app/ActionBar;

    .line 547
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 548
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f03000d

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 550
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 551
    .local v0, "customView":Landroid/view/View;
    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarMessageList:Landroid/view/View;

    .line 552
    const v1, 0x7f0c0059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarMessageView:Landroid/view/View;

    .line 553
    const v1, 0x7f0c005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/view/MessageTitleView;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarSubject:Lcom/fsck/k9/view/MessageTitleView;

    .line 554
    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarTitle:Landroid/widget/TextView;

    .line 555
    const v1, 0x7f0c0056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarSubTitle:Landroid/widget/TextView;

    .line 556
    const v1, 0x7f0c0058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarUnread:Landroid/widget/TextView;

    .line 557
    const v1, 0x7f0c0057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarProgress:Landroid/widget/ProgressBar;

    .line 558
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->getActionButtonIndeterminateProgress()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mActionButtonIndeterminateProgress:Landroid/view/View;

    .line 560
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 561
    return-void
.end method

.method private initializeDisplayMode(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->useSplitView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    sget-object v1, Lcom/fsck/k9/activity/MessageList$DisplayMode;->SPLIT_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    .line 345
    :goto_0
    return-void

    .line 331
    :cond_0
    if-eqz p1, :cond_1

    .line 332
    const-string v1, "displayMode"

    .line 333
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageList$DisplayMode;

    .line 334
    .local v0, "savedDisplayMode":Lcom/fsck/k9/activity/MessageList$DisplayMode;
    sget-object v1, Lcom/fsck/k9/activity/MessageList$DisplayMode;->SPLIT_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-eq v0, v1, :cond_1

    .line 335
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    goto :goto_0

    .line 340
    .end local v0    # "savedDisplayMode":Lcom/fsck/k9/activity/MessageList$DisplayMode;
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    if-eqz v1, :cond_3

    .line 341
    :cond_2
    sget-object v1, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    goto :goto_0

    .line 343
    :cond_3
    sget-object v1, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    goto :goto_0
.end method

.method private initializeFragments()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 292
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 293
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 295
    iget-object v5, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    if-eqz v5, :cond_2

    move v2, v3

    .line 297
    .local v2, "hasMessageListFragment":Z
    :goto_0
    if-nez v2, :cond_0

    .line 298
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 299
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-object v5, p0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    .line 300
    invoke-static {}, Lcom/fsck/k9/K9;->isThreadedViewEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/fsck/k9/activity/MessageList;->mNoThreading:Z

    if-nez v6, :cond_3

    .line 299
    :goto_1
    invoke-static {v5, v4, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->newInstance(Lcom/fsck/k9/search/LocalSearch;ZZ)Lcom/fsck/k9/fragment/MessageListFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    .line 301
    const v3, 0x7f0c00bd

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v1, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 302
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 307
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    if-eqz v3, :cond_1

    .line 309
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/MessageList;->openMessage(Lcom/fsck/k9/activity/MessageReference;)V

    .line 311
    :cond_1
    return-void

    .end local v2    # "hasMessageListFragment":Z
    :cond_2
    move v2, v4

    .line 295
    goto :goto_0

    .restart local v1    # "ft":Landroid/app/FragmentTransaction;
    .restart local v2    # "hasMessageListFragment":Z
    :cond_3
    move v3, v4

    .line 300
    goto :goto_1
.end method

.method private initializeLayout()V
    .locals 4

    .prologue
    .line 357
    const v1, 0x7f0c00be

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewContainer:Landroid/view/ViewGroup;

    .line 359
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 360
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030018

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewPlaceHolder:Landroid/view/View;

    .line 361
    return-void
.end method

.method public static intentDisplaySearch(Landroid/content/Context;Lcom/fsck/k9/search/SearchSpecification;ZZZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "search"    # Lcom/fsck/k9/search/SearchSpecification;
    .param p2, "noThreading"    # Z
    .param p3, "newTask"    # Z
    .param p4, "clearTop"    # Z

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "search_bytes"

    invoke-static {p1}, Lcom/fsck/k9/helper/ParcelableUtil;->marshall(Landroid/os/Parcelable;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 116
    const-string v1, "no_threading"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    if-eqz p4, :cond_0

    .line 119
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    :cond_0
    if-eqz p3, :cond_1

    .line 122
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    :cond_1
    return-object v0
.end method

.method private onAccounts()V
    .locals 0

    .prologue
    .line 781
    invoke-static {p0}, Lcom/fsck/k9/activity/Accounts;->listAccounts(Landroid/content/Context;)V

    .line 782
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->finish()V

    .line 783
    return-void
.end method

.method private onEditAccount()V
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->actionSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    .line 796
    return-void
.end method

.method private onEditPrefs()V
    .locals 0

    .prologue
    .line 791
    invoke-static {p0}, Lcom/fsck/k9/activity/setup/Prefs;->actionPrefs(Landroid/content/Context;)V

    .line 792
    return-void
.end method

.method private onShowFolderList()V
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccount(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    .line 787
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->finish()V

    .line 788
    return-void
.end method

.method private onToggleTheme()V
    .locals 2

    .prologue
    .line 1560
    invoke-static {}, Lcom/fsck/k9/K9;->getK9MessageViewTheme()Lcom/fsck/k9/K9$Theme;

    move-result-object v0

    sget-object v1, Lcom/fsck/k9/K9$Theme;->DARK:Lcom/fsck/k9/K9$Theme;

    if-ne v0, v1, :cond_0

    .line 1561
    sget-object v0, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    invoke-static {v0}, Lcom/fsck/k9/K9;->setK9MessageViewThemeSetting(Lcom/fsck/k9/K9$Theme;)V

    .line 1566
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fsck/k9/activity/MessageList$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/MessageList$1;-><init>(Lcom/fsck/k9/activity/MessageList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1575
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1577
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->recreate()V

    .line 1578
    return-void

    .line 1563
    :cond_0
    sget-object v0, Lcom/fsck/k9/K9$Theme;->DARK:Lcom/fsck/k9/K9$Theme;

    invoke-static {v0}, Lcom/fsck/k9/K9;->setK9MessageViewThemeSetting(Lcom/fsck/k9/K9$Theme;)V

    goto :goto_0
.end method

.method private removeMessageListFragment()V
    .locals 2

    .prologue
    .line 1405
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1406
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1407
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    .line 1408
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1409
    return-void
.end method

.method private removeMessageViewFragment()V
    .locals 2

    .prologue
    .line 1394
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v1, :cond_0

    .line 1395
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1396
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1397
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 1398
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1400
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showDefaultTitleView()V

    .line 1402
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public static shortcutIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "specialFolder"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "shortcut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "special_folder"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    return-object v0
.end method

.method private showDefaultTitleView()V
    .locals 2

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarMessageView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1582
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarMessageList:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1584
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->updateTitle()V

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarSubject:Lcom/fsck/k9/view/MessageTitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/MessageTitleView;->setMessageHeader(Lcom/fsck/k9/view/MessageHeader;)V

    .line 1589
    return-void
.end method

.method private showLogicalNextMessage()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1480
    const/4 v0, 0x0

    .line 1481
    .local v0, "result":Z
    iget v2, p0, Lcom/fsck/k9/activity/MessageList;->mLastDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1482
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showNextMessage()Z

    move-result v0

    .line 1487
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 1488
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showNextMessage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showPreviousMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    move v0, v1

    .line 1491
    :cond_2
    :goto_1
    return v0

    .line 1483
    :cond_3
    iget v2, p0, Lcom/fsck/k9/activity/MessageList;->mLastDirection:I

    if-ne v2, v1, :cond_0

    .line 1484
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showPreviousMessage()Z

    move-result v0

    goto :goto_0

    .line 1488
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private showMessageList()V
    .locals 2

    .prologue
    .line 1527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListWasDisplayed:Z

    .line 1528
    sget-object v0, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    .line 1529
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mViewSwitcher:Lcom/fsck/k9/view/ViewSwitcher;

    invoke-virtual {v0}, Lcom/fsck/k9/view/ViewSwitcher;->showFirstView()V

    .line 1531
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->setActiveMessage(Lcom/fsck/k9/activity/MessageReference;)V

    .line 1533
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showDefaultTitleView()V

    .line 1534
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->configureMenu(Landroid/view/Menu;)V

    .line 1535
    return-void
.end method

.method private showMessageTitleView()V
    .locals 2

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarMessageList:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1593
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarMessageView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1595
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v0, :cond_0

    .line 1596
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageList;->displayMessageSubject(Ljava/lang/String;)V

    .line 1597
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->updateTitle()V

    .line 1599
    :cond_0
    return-void
.end method

.method private showMessageView()V
    .locals 2

    .prologue
    .line 1538
    sget-object v0, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    .line 1540
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListWasDisplayed:Z

    if-nez v0, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mViewSwitcher:Lcom/fsck/k9/view/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/ViewSwitcher;->setAnimateFirstView(Z)V

    .line 1543
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mViewSwitcher:Lcom/fsck/k9/view/ViewSwitcher;

    invoke-virtual {v0}, Lcom/fsck/k9/view/ViewSwitcher;->showSecondView()V

    .line 1545
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showMessageTitleView()V

    .line 1546
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->configureMenu(Landroid/view/Menu;)V

    .line 1547
    return-void
.end method

.method private showMessageViewPlaceHolder()V
    .locals 2

    .prologue
    .line 1380
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->removeMessageViewFragment()V

    .line 1383
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewPlaceHolder:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewPlaceHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->setActiveMessage(Lcom/fsck/k9/activity/MessageReference;)V

    .line 1388
    return-void
.end method

.method private showNextMessage()Z
    .locals 2

    .prologue
    .line 1505
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lcom/fsck/k9/activity/MessageReference;

    move-result-object v0

    .line 1506
    .local v0, "ref":Lcom/fsck/k9/activity/MessageReference;
    if-eqz v0, :cond_0

    .line 1507
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->openNext(Lcom/fsck/k9/activity/MessageReference;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1508
    const/4 v1, 0x2

    iput v1, p0, Lcom/fsck/k9/activity/MessageList;->mLastDirection:I

    .line 1509
    const/4 v1, 0x1

    .line 1512
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showPreviousMessage()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1516
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lcom/fsck/k9/activity/MessageReference;

    move-result-object v0

    .line 1517
    .local v0, "ref":Lcom/fsck/k9/activity/MessageReference;
    if-eqz v0, :cond_0

    .line 1518
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->openPrevious(Lcom/fsck/k9/activity/MessageReference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1519
    iput v1, p0, Lcom/fsck/k9/activity/MessageList;->mLastDirection:I

    .line 1523
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private useSplitView()Z
    .locals 3

    .prologue
    .line 348
    invoke-static {}, Lcom/fsck/k9/K9;->getSplitViewMode()Lcom/fsck/k9/K9$SplitViewMode;

    move-result-object v1

    .line 349
    .local v1, "splitViewMode":Lcom/fsck/k9/K9$SplitViewMode;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 351
    .local v0, "orientation":I
    sget-object v2, Lcom/fsck/k9/K9$SplitViewMode;->ALWAYS:Lcom/fsck/k9/K9$SplitViewMode;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/fsck/k9/K9$SplitViewMode;->WHEN_IN_LANDSCAPE:Lcom/fsck/k9/K9$SplitViewMode;

    if-ne v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableDeleteAction()V
    .locals 2

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0c013e

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1557
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, "ret":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 572
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/fsck/k9/activity/MessageList;->onCustomKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 574
    :cond_0
    if-nez v0, :cond_1

    .line 575
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 577
    :cond_1
    return v0
.end method

.method public displayMessageSubject(Ljava/lang/String;)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v1, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-ne v0, v1, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarSubject:Lcom/fsck/k9/view/MessageTitleView;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/MessageTitleView;->setText(Ljava/lang/CharSequence;)V

    .line 1461
    :goto_0
    return-void

    .line 1459
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarSubject:Lcom/fsck/k9/view/MessageTitleView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageTitleView;->showSubjectInMessageHeader()V

    goto :goto_0
.end method

.method public enableActionBarProgress(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1435
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMenuButtonCheckMail:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMenuButtonCheckMail:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1436
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1437
    if-eqz p1, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMenuButtonCheckMail:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mActionButtonIndeterminateProgress:Landroid/view/View;

    .line 1439
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1452
    :goto_0
    return-void

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMenuButtonCheckMail:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1444
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMenuButtonCheckMail:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 1445
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMenuButtonCheckMail:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1446
    :cond_2
    if-eqz p1, :cond_3

    .line 1447
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 1449
    :cond_3
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public goBack()V
    .locals 3

    .prologue
    .line 1419
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1420
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v2, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-ne v1, v2, :cond_0

    .line 1421
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showMessageList()V

    .line 1431
    :goto_0
    return-void

    .line 1422
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1423
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 1424
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v1}, Lcom/fsck/k9/fragment/MessageListFragment;->isManualSearch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1425
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->finish()V

    goto :goto_0

    .line 1426
    :cond_2
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageList;->mSingleFolderMode:Z

    if-nez v1, :cond_3

    .line 1427
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->onAccounts()V

    goto :goto_0

    .line 1429
    :cond_3
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->onShowFolderList()V

    goto :goto_0
.end method

.method public messageHeaderViewAvailable(Lcom/fsck/k9/view/MessageHeader;)V
    .locals 1
    .param p1, "header"    # Lcom/fsck/k9/view/MessageHeader;

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarSubject:Lcom/fsck/k9/view/MessageTitleView;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/MessageTitleView;->setMessageHeader(Lcom/fsck/k9/view/MessageHeader;)V

    .line 1502
    return-void
.end method

.method protected onAccountUnavailable()V
    .locals 0

    .prologue
    .line 1171
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->finish()V

    .line 1173
    invoke-static {p0}, Lcom/fsck/k9/activity/Accounts;->listAccounts(Landroid/content/Context;)V

    .line 1174
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/high16 v1, 0x10000

    .line 1617
    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/activity/K9Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1619
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    .line 1620
    xor-int/2addr p1, v1

    .line 1621
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onPendingIntentResult(IILandroid/content/Intent;)V

    .line 1625
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v1, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListWasDisplayed:Z

    if-eqz v0, :cond_0

    .line 583
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showMessageList()V

    .line 587
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-super {p0}, Lcom/fsck/k9/activity/K9Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBackStackChanged()V
    .locals 2

    .prologue
    .line 1293
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->findFragments()V

    .line 1295
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v1, Lcom/fsck/k9/activity/MessageList$DisplayMode;->SPLIT_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-ne v0, v1, :cond_0

    .line 1296
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showMessageViewPlaceHolder()V

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->configureMenu(Landroid/view/Menu;)V

    .line 1300
    return-void
.end method

.method public onCompose(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 1277
    invoke-static {p0, p1}, Lcom/fsck/k9/activity/compose/MessageActions;->actionCompose(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    .line 1278
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/fsck/k9/activity/UpgradeDatabases;->actionUpgradeDatabases(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->finish()V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->useSplitView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    const v1, 0x7f03003e

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/MessageList;->setContentView(I)V

    .line 223
    :goto_1
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->initializeActionBar()V

    .line 226
    invoke-virtual {p0, p0}, Lcom/fsck/k9/activity/MessageList;->setupGestureDetector(Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;)V

    .line 228
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageList;->decodeExtras(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->findFragments()V

    .line 233
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageList;->initializeDisplayMode(Landroid/os/Bundle;)V

    .line 234
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->initializeLayout()V

    .line 235
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->initializeFragments()V

    .line 236
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->displayViews()V

    .line 238
    new-instance v0, Lde/cketti/library/changelog/ChangeLog;

    invoke-direct {v0, p0}, Lde/cketti/library/changelog/ChangeLog;-><init>(Landroid/content/Context;)V

    .line 239
    .local v0, "cl":Lde/cketti/library/changelog/ChangeLog;
    invoke-virtual {v0}, Lde/cketti/library/changelog/ChangeLog;->isFirstRun()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v0}, Lde/cketti/library/changelog/ChangeLog;->getLogDialog()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 214
    .end local v0    # "cl":Lde/cketti/library/changelog/ChangeLog;
    :cond_2
    const v1, 0x7f03002a

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/MessageList;->setContentView(I)V

    .line 215
    const v1, 0x7f0c00bc

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/view/ViewSwitcher;

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mViewSwitcher:Lcom/fsck/k9/view/ViewSwitcher;

    .line 216
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mViewSwitcher:Lcom/fsck/k9/view/ViewSwitcher;

    const v2, 0x7f040006

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/view/ViewSwitcher;->setFirstInAnimation(Landroid/view/animation/Animation;)V

    .line 217
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mViewSwitcher:Lcom/fsck/k9/view/ViewSwitcher;

    const v2, 0x7f040009

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/view/ViewSwitcher;->setFirstOutAnimation(Landroid/view/animation/Animation;)V

    .line 218
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mViewSwitcher:Lcom/fsck/k9/view/ViewSwitcher;

    const v2, 0x7f040007

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/view/ViewSwitcher;->setSecondInAnimation(Landroid/view/animation/Animation;)V

    .line 219
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mViewSwitcher:Lcom/fsck/k9/view/ViewSwitcher;

    const v2, 0x7f040008

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/view/ViewSwitcher;->setSecondOutAnimation(Landroid/view/animation/Animation;)V

    .line 220
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mViewSwitcher:Lcom/fsck/k9/view/ViewSwitcher;

    invoke-virtual {v1, p0}, Lcom/fsck/k9/view/ViewSwitcher;->setOnSwitchCompleteListener(Lcom/fsck/k9/view/ViewSwitcher$OnSwitchCompleteListener;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 975
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageList;->mMenu:Landroid/view/Menu;

    .line 976
    const v0, 0x7f0c0117

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMenuButtonCheckMail:Landroid/view/MenuItem;

    .line 977
    const/4 v0, 0x1

    return v0
.end method

.method public onCustomKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 605
    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v1, v2

    .line 765
    :cond_1
    :goto_0
    return v1

    .line 607
    :pswitch_1
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v4, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-eq v3, v4, :cond_2

    .line 608
    invoke-static {}, Lcom/fsck/k9/K9;->useVolumeKeysForNavigationEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 609
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showPreviousMessage()Z

    goto :goto_0

    .line 611
    :cond_2
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v4, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-eq v3, v4, :cond_0

    .line 612
    invoke-static {}, Lcom/fsck/k9/K9;->useVolumeKeysForListNavigationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 613
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onMoveUp()V

    goto :goto_0

    .line 620
    :pswitch_2
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v4, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-eq v3, v4, :cond_3

    .line 621
    invoke-static {}, Lcom/fsck/k9/K9;->useVolumeKeysForNavigationEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 622
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showNextMessage()Z

    goto :goto_0

    .line 624
    :cond_3
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v4, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-eq v3, v4, :cond_0

    .line 625
    invoke-static {}, Lcom/fsck/k9/K9;->useVolumeKeysForListNavigationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 626
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onMoveDown()V

    goto :goto_0

    .line 633
    :pswitch_3
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onCompose()V

    goto :goto_0

    .line 637
    :pswitch_4
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->isSingleAccountMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 638
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->onShowFolderList()V

    goto :goto_0

    .line 643
    :pswitch_5
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onCycleSort()V

    goto :goto_0

    .line 647
    :pswitch_6
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onReverseSort()V

    goto :goto_0

    .line 652
    :pswitch_7
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v3, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-ne v2, v3, :cond_4

    .line 653
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onDelete()V

    goto :goto_0

    .line 654
    :cond_4
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v2, :cond_1

    .line 655
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onDelete()V

    goto/16 :goto_0

    .line 660
    :pswitch_8
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->toggleMessageSelect()V

    goto/16 :goto_0

    .line 664
    :pswitch_9
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v3, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-ne v2, v3, :cond_5

    .line 665
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onToggleFlagged()V

    goto/16 :goto_0

    .line 666
    :cond_5
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v2, :cond_1

    .line 667
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onToggleFlagged()V

    goto/16 :goto_0

    .line 672
    :pswitch_a
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v3, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-ne v2, v3, :cond_6

    .line 673
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onMove()V

    goto/16 :goto_0

    .line 674
    :cond_6
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v2, :cond_1

    .line 675
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onMove()V

    goto/16 :goto_0

    .line 680
    :pswitch_b
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v3, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-ne v2, v3, :cond_7

    .line 681
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onArchive()V

    goto/16 :goto_0

    .line 682
    :cond_7
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v2, :cond_1

    .line 683
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onArchive()V

    goto/16 :goto_0

    .line 688
    :pswitch_c
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v3, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-ne v2, v3, :cond_8

    .line 689
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onCopy()V

    goto/16 :goto_0

    .line 690
    :cond_8
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v2, :cond_1

    .line 691
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onCopy()V

    goto/16 :goto_0

    .line 696
    :pswitch_d
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v3, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-ne v2, v3, :cond_9

    .line 697
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onToggleRead()V

    goto/16 :goto_0

    .line 698
    :cond_9
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v2, :cond_1

    .line 699
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onToggleRead()V

    goto/16 :goto_0

    .line 704
    :pswitch_e
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v2, :cond_1

    .line 705
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onForward()V

    goto/16 :goto_0

    .line 710
    :pswitch_f
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v2, :cond_1

    .line 711
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onReplyAll()V

    goto/16 :goto_0

    .line 716
    :pswitch_10
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v2, :cond_1

    .line 717
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onReply()V

    goto/16 :goto_0

    .line 723
    :pswitch_11
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v2, :cond_1

    .line 724
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showPreviousMessage()Z

    goto/16 :goto_0

    .line 730
    :pswitch_12
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v2, :cond_1

    .line 731
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showNextMessage()Z

    goto/16 :goto_0

    .line 742
    :pswitch_13
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v3, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-ne v2, v3, :cond_a

    .line 743
    const v2, 0x7f0702a5

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 747
    .local v0, "toast":Landroid/widget/Toast;
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 745
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_a
    const v2, 0x7f0702b5

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .restart local v0    # "toast":Landroid/widget/Toast;
    goto :goto_1

    .line 751
    .end local v0    # "toast":Landroid/widget/Toast;
    :pswitch_14
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v3, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-ne v1, v3, :cond_b

    .line 752
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showPreviousMessage()Z

    move-result v1

    goto/16 :goto_0

    :cond_b
    move v1, v2

    .line 754
    goto/16 :goto_0

    .line 757
    :pswitch_15
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v3, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-ne v1, v3, :cond_c

    .line 758
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showNextMessage()Z

    move-result v1

    goto/16 :goto_0

    :cond_c
    move v1, v2

    .line 760
    goto/16 :goto_0

    .line 605
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_e
        :pswitch_9
        :pswitch_13
        :pswitch_6
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_a
        :pswitch_12
        :pswitch_5
        :pswitch_11
        :pswitch_4
        :pswitch_10
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onForward(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 1
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 1247
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/activity/MessageList;->onForward(Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V

    .line 1248
    return-void
.end method

.method public onForward(Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "decryptionResultForReply"    # Landroid/os/Parcelable;

    .prologue
    .line 1252
    invoke-static {p0, p1, p2}, Lcom/fsck/k9/activity/compose/MessageActions;->actionForward(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V

    .line 1253
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 771
    invoke-static {}, Lcom/fsck/k9/K9;->useVolumeKeysForListNavigationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 773
    :cond_0
    const-string v0, "Swallowed key up."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    const/4 v0, 0x1

    .line 777
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/K9Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 246
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 248
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageList;->setIntent(Landroid/content/Intent;)V

    .line 254
    iget v0, p0, Lcom/fsck/k9/activity/MessageList;->mFirstBackStackId:I

    if-ltz v0, :cond_2

    .line 255
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/fsck/k9/activity/MessageList;->mFirstBackStackId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(II)Z

    .line 257
    const/4 v0, -0x1

    iput v0, p0, Lcom/fsck/k9/activity/MessageList;->mFirstBackStackId:I

    .line 259
    :cond_2
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->removeMessageListFragment()V

    .line 260
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->removeMessageViewFragment()V

    .line 262
    iput-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 263
    iput-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    .line 264
    iput-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    .line 266
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageList;->decodeExtras(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/MessageList;->initializeDisplayMode(Landroid/os/Bundle;)V

    .line 271
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->initializeFragments()V

    .line 272
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->displayViews()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 805
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 806
    .local v0, "itemId":I
    sparse-switch v0, :sswitch_data_0

    .line 945
    iget-boolean v2, p0, Lcom/fsck/k9/activity/MessageList;->mSingleFolderMode:Z

    if-nez v2, :cond_1

    .line 948
    const/4 v1, 0x0

    .line 967
    :cond_0
    :goto_0
    return v1

    .line 808
    :sswitch_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->goBack()V

    goto :goto_0

    .line 812
    :sswitch_1
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onCompose()V

    goto :goto_0

    .line 816
    :sswitch_2
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->onToggleTheme()V

    goto :goto_0

    .line 821
    :sswitch_3
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->checkMail()V

    goto :goto_0

    .line 825
    :sswitch_4
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    sget-object v3, Lcom/fsck/k9/Account$SortType;->SORT_DATE:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;)V

    goto :goto_0

    .line 829
    :sswitch_5
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    sget-object v3, Lcom/fsck/k9/Account$SortType;->SORT_ARRIVAL:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;)V

    goto :goto_0

    .line 833
    :sswitch_6
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    sget-object v3, Lcom/fsck/k9/Account$SortType;->SORT_SUBJECT:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;)V

    goto :goto_0

    .line 837
    :sswitch_7
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    sget-object v3, Lcom/fsck/k9/Account$SortType;->SORT_SENDER:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;)V

    goto :goto_0

    .line 841
    :sswitch_8
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    sget-object v3, Lcom/fsck/k9/Account$SortType;->SORT_FLAGGED:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;)V

    goto :goto_0

    .line 845
    :sswitch_9
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    sget-object v3, Lcom/fsck/k9/Account$SortType;->SORT_UNREAD:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;)V

    goto :goto_0

    .line 849
    :sswitch_a
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    sget-object v3, Lcom/fsck/k9/Account$SortType;->SORT_ATTACHMENT:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;)V

    goto :goto_0

    .line 853
    :sswitch_b
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->selectAll()V

    goto :goto_0

    .line 857
    :sswitch_c
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->onEditPrefs()V

    goto :goto_0

    .line 861
    :sswitch_d
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->onEditAccount()V

    goto :goto_0

    .line 865
    :sswitch_e
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onSearchRequested()Z

    goto :goto_0

    .line 869
    :sswitch_f
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onRemoteSearch()V

    goto :goto_0

    .line 873
    :sswitch_10
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->confirmMarkAllAsRead()V

    goto :goto_0

    .line 877
    :sswitch_11
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->onShowFolderList()V

    goto :goto_0

    .line 882
    :sswitch_12
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showNextMessage()Z

    goto :goto_0

    .line 886
    :sswitch_13
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showPreviousMessage()Z

    goto :goto_0

    .line 890
    :sswitch_14
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onDelete()V

    goto :goto_0

    .line 894
    :sswitch_15
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onReply()V

    goto/16 :goto_0

    .line 898
    :sswitch_16
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onReplyAll()V

    goto/16 :goto_0

    .line 902
    :sswitch_17
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onForward()V

    goto/16 :goto_0

    .line 906
    :sswitch_18
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onSendAlternate()V

    goto/16 :goto_0

    .line 910
    :sswitch_19
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onToggleRead()V

    goto/16 :goto_0

    .line 915
    :sswitch_1a
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onArchive()V

    goto/16 :goto_0

    .line 920
    :sswitch_1b
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onSpam()V

    goto/16 :goto_0

    .line 925
    :sswitch_1c
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onMove()V

    goto/16 :goto_0

    .line 930
    :sswitch_1d
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onCopy()V

    goto/16 :goto_0

    .line 934
    :sswitch_1e
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onSelectText()V

    goto/16 :goto_0

    .line 939
    :sswitch_1f
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onToggleAllHeadersView()V

    .line 940
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->updateMenu()V

    goto/16 :goto_0

    .line 951
    :cond_1
    sparse-switch v0, :sswitch_data_1

    .line 967
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto/16 :goto_0

    .line 953
    :sswitch_20
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onSendPendingMessages()V

    goto/16 :goto_0

    .line 957
    :sswitch_21
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 958
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList;->mFolderName:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/fsck/k9/activity/setup/FolderSettings;->actionSettings(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 963
    :sswitch_22
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onExpunge()V

    goto/16 :goto_0

    .line 806
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c0110 -> :sswitch_d
        0x7f0c0116 -> :sswitch_e
        0x7f0c0117 -> :sswitch_3
        0x7f0c0118 -> :sswitch_1
        0x7f0c012b -> :sswitch_c
        0x7f0c013e -> :sswitch_14
        0x7f0c0141 -> :sswitch_1a
        0x7f0c0142 -> :sswitch_1c
        0x7f0c0143 -> :sswitch_1d
        0x7f0c0146 -> :sswitch_1b
        0x7f0c0147 -> :sswitch_b
        0x7f0c014a -> :sswitch_16
        0x7f0c014b -> :sswitch_15
        0x7f0c014d -> :sswitch_17
        0x7f0c0150 -> :sswitch_13
        0x7f0c0151 -> :sswitch_12
        0x7f0c0152 -> :sswitch_f
        0x7f0c0154 -> :sswitch_18
        0x7f0c0156 -> :sswitch_1a
        0x7f0c0157 -> :sswitch_1b
        0x7f0c0158 -> :sswitch_1c
        0x7f0c0159 -> :sswitch_1d
        0x7f0c015a -> :sswitch_19
        0x7f0c015b -> :sswitch_1f
        0x7f0c015c -> :sswitch_1f
        0x7f0c015e -> :sswitch_4
        0x7f0c015f -> :sswitch_5
        0x7f0c0160 -> :sswitch_6
        0x7f0c0161 -> :sswitch_7
        0x7f0c0162 -> :sswitch_8
        0x7f0c0163 -> :sswitch_9
        0x7f0c0164 -> :sswitch_a
        0x7f0c0165 -> :sswitch_10
        0x7f0c0167 -> :sswitch_1e
        0x7f0c0168 -> :sswitch_2
        0x7f0c0169 -> :sswitch_11
    .end sparse-switch

    .line 951
    :sswitch_data_1
    .sparse-switch
        0x7f0c0121 -> :sswitch_21
        0x7f0c0127 -> :sswitch_20
        0x7f0c0166 -> :sswitch_22
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 505
    invoke-super {p0}, Lcom/fsck/k9/activity/K9Activity;->onPause()V

    .line 507
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mStorageListener:Lcom/fsck/k9/mailstore/StorageManager$StorageListener;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/StorageManager;->removeListener(Lcom/fsck/k9/mailstore/StorageManager$StorageListener;)V

    .line 508
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 982
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 983
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageList;->configureMenu(Landroid/view/Menu;)V

    .line 984
    const/4 v0, 0x1

    return v0
.end method

.method public onReply(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 1
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 1257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/activity/MessageList;->onReply(Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V

    .line 1258
    return-void
.end method

.method public onReply(Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "decryptionResultForReply"    # Landroid/os/Parcelable;

    .prologue
    .line 1262
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/fsck/k9/activity/compose/MessageActions;->actionReply(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;ZLandroid/os/Parcelable;)V

    .line 1263
    return-void
.end method

.method public onReplyAll(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 1
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 1267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/activity/MessageList;->onReplyAll(Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V

    .line 1268
    return-void
.end method

.method public onReplyAll(Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "decryptionResultForReply"    # Landroid/os/Parcelable;

    .prologue
    .line 1272
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/fsck/k9/activity/compose/MessageActions;->actionReply(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;ZLandroid/os/Parcelable;)V

    .line 1273
    return-void
.end method

.method public onResendMessage(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 0
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 1242
    invoke-static {p0, p1}, Lcom/fsck/k9/activity/compose/MessageActions;->actionEditDraft(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)V

    .line 1243
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 538
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 540
    const-string v0, "messageListWasDisplayed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListWasDisplayed:Z

    .line 541
    const-string v0, "firstBackstackId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/activity/MessageList;->mFirstBackStackId:I

    .line 542
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 512
    invoke-super {p0}, Lcom/fsck/k9/activity/K9Activity;->onResume()V

    .line 514
    instance-of v0, p0, Lcom/fsck/k9/activity/Search;

    if-nez v0, :cond_0

    .line 517
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fsck/k9/activity/Search;->setActive(Z)V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, p0}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->onAccountUnavailable()V

    .line 525
    :goto_0
    return-void

    .line 524
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mStorageListener:Lcom/fsck/k9/mailstore/StorageManager$StorageListener;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/StorageManager;->addListener(Lcom/fsck/k9/mailstore/StorageManager$StorageListener;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 529
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 531
    const-string v0, "displayMode"

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 532
    const-string v0, "messageListWasDisplayed"

    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListWasDisplayed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 533
    const-string v0, "firstBackstackId"

    iget v1, p0, Lcom/fsck/k9/activity/MessageList;->mFirstBackStackId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 534
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSwipeLeftToRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v1, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-eq v0, v1, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/fragment/MessageListFragment;->onSwipeLeftToRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 1314
    :cond_0
    return-void
.end method

.method public onSwipeRightToLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v1, Lcom/fsck/k9/activity/MessageList$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-eq v0, v1, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/fragment/MessageListFragment;->onSwipeRightToLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 1307
    :cond_0
    return-void
.end method

.method public onSwitchComplete(I)V
    .locals 0
    .param p1, "displayedChild"    # I

    .prologue
    .line 1603
    if-nez p1, :cond_0

    .line 1604
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->removeMessageViewFragment()V

    .line 1606
    :cond_0
    return-void
.end method

.method public openMessage(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 7
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v4

    .line 1216
    .local v4, "prefs":Lcom/fsck/k9/Preferences;
    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 1217
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v1

    .line 1219
    .local v1, "folderName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1220
    invoke-static {p0, p1}, Lcom/fsck/k9/activity/compose/MessageActions;->actionEditDraft(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)V

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1222
    :cond_1
    iget-object v5, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewContainer:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewPlaceHolder:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1224
    iget-object v5, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    if-eqz v5, :cond_2

    .line 1225
    iget-object v5, p0, Lcom/fsck/k9/activity/MessageList;->mMessageListFragment:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v5, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->setActiveMessage(Lcom/fsck/k9/activity/MessageReference;)V

    .line 1228
    :cond_2
    invoke-static {p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->newInstance(Lcom/fsck/k9/activity/MessageReference;)Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    move-result-object v2

    .line 1229
    .local v2, "fragment":Lcom/fsck/k9/ui/messageview/MessageViewFragment;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 1230
    .local v3, "ft":Landroid/app/FragmentTransaction;
    const v5, 0x7f0c00be

    invoke-virtual {v3, v5, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1231
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mMessageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 1232
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 1234
    iget-object v5, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v6, Lcom/fsck/k9/activity/MessageList$DisplayMode;->SPLIT_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-eq v5, v6, :cond_0

    .line 1235
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showMessageView()V

    goto :goto_0
.end method

.method public remoteSearchStarted()V
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageList;->configureMenu(Landroid/view/Menu;)V

    .line 1415
    return-void
.end method

.method public setActionBarSubTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    return-void
.end method

.method public setActionBarTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    return-void
.end method

.method public setActionBarUnread(I)V
    .locals 5
    .param p1, "unread"    # I

    .prologue
    const/4 v4, 0x0

    .line 1185
    if-nez p1, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarUnread:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1191
    :goto_0
    return-void

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarUnread:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1189
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mActionBarUnread:Landroid/widget/TextView;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setMessageListProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 1210
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageList;->setProgress(I)V

    .line 1211
    return-void
.end method

.method public setMessageListSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 1200
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageList;->setActionBarSubTitle(Ljava/lang/String;)V

    .line 1201
    return-void
.end method

.method public setMessageListTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1195
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageList;->setActionBarTitle(Ljava/lang/String;)V

    .line 1196
    return-void
.end method

.method public setProgress(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1496
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageList;->setProgressBarIndeterminateVisibility(Z)V

    .line 1497
    return-void
.end method

.method public setUnreadCount(I)V
    .locals 0
    .param p1, "unread"    # I

    .prologue
    .line 1205
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageList;->setActionBarUnread(I)V

    .line 1206
    return-void
.end method

.method public showMoreFromSameSender(Ljava/lang/String;)V
    .locals 5
    .param p1, "senderAddress"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1282
    new-instance v1, Lcom/fsck/k9/search/LocalSearch;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "From "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;)V

    .line 1283
    .local v1, "tmpSearch":Lcom/fsck/k9/search/LocalSearch;
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList;->mSearch:Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v2}, Lcom/fsck/k9/search/LocalSearch;->getAccountUuids()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuids([Ljava/lang/String;)V

    .line 1284
    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->SENDER:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v3, Lcom/fsck/k9/search/SearchSpecification$Attribute;->CONTAINS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1, v2, p1, v3}, Lcom/fsck/k9/search/LocalSearch;->and(Lcom/fsck/k9/search/SearchSpecification$SearchField;Ljava/lang/String;Lcom/fsck/k9/search/SearchSpecification$Attribute;)V

    .line 1286
    invoke-static {v1, v4, v4}, Lcom/fsck/k9/fragment/MessageListFragment;->newInstance(Lcom/fsck/k9/search/LocalSearch;ZZ)Lcom/fsck/k9/fragment/MessageListFragment;

    move-result-object v0

    .line 1288
    .local v0, "fragment":Lcom/fsck/k9/fragment/MessageListFragment;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/fsck/k9/activity/MessageList;->addMessageListFragment(Lcom/fsck/k9/fragment/MessageListFragment;Z)V

    .line 1289
    return-void
.end method

.method public showNextMessageOrReturn()V
    .locals 2

    .prologue
    .line 1465
    invoke-static {}, Lcom/fsck/k9/K9;->messageViewReturnToList()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showLogicalNextMessage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList;->mDisplayMode:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    sget-object v1, Lcom/fsck/k9/activity/MessageList$DisplayMode;->SPLIT_VIEW:Lcom/fsck/k9/activity/MessageList$DisplayMode;

    if-ne v0, v1, :cond_2

    .line 1467
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showMessageViewPlaceHolder()V

    .line 1472
    :cond_1
    :goto_0
    return-void

    .line 1469
    :cond_2
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showMessageList()V

    goto :goto_0
.end method

.method public showThread(Lcom/fsck/k9/Account;Ljava/lang/String;J)V
    .locals 7
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "threadRootId"    # J

    .prologue
    const/4 v5, 0x1

    .line 1369
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageList;->showMessageViewPlaceHolder()V

    .line 1371
    new-instance v1, Lcom/fsck/k9/search/LocalSearch;

    invoke-direct {v1}, Lcom/fsck/k9/search/LocalSearch;-><init>()V

    .line 1372
    .local v1, "tmpSearch":Lcom/fsck/k9/search/LocalSearch;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 1373
    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->THREAD_ID:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1, v2, v3, v4}, Lcom/fsck/k9/search/LocalSearch;->and(Lcom/fsck/k9/search/SearchSpecification$SearchField;Ljava/lang/String;Lcom/fsck/k9/search/SearchSpecification$Attribute;)V

    .line 1375
    const/4 v2, 0x0

    invoke-static {v1, v5, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->newInstance(Lcom/fsck/k9/search/LocalSearch;ZZ)Lcom/fsck/k9/fragment/MessageListFragment;

    move-result-object v0

    .line 1376
    .local v0, "fragment":Lcom/fsck/k9/fragment/MessageListFragment;
    invoke-direct {p0, v0, v5}, Lcom/fsck/k9/activity/MessageList;->addMessageListFragment(Lcom/fsck/k9/fragment/MessageListFragment;Z)V

    .line 1377
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1611
    const/high16 v0, 0x10000

    or-int/2addr p2, v0

    .line 1612
    invoke-super/range {p0 .. p6}, Lcom/fsck/k9/activity/K9Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 1613
    return-void
.end method

.method public startSearch(Lcom/fsck/k9/Account;Ljava/lang/String;)Z
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1354
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1356
    .local v0, "appData":Landroid/os/Bundle;
    const-string v1, "com.fsck.k9.search_account"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const-string v1, "com.fsck.k9.search_folder"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    invoke-virtual {p0, v4, v3, v0, v3}, Lcom/fsck/k9/activity/MessageList;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1364
    .end local v0    # "appData":Landroid/os/Bundle;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1361
    :cond_0
    invoke-virtual {p0, v4, v3, v4, v3}, Lcom/fsck/k9/activity/MessageList;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method public updateMenu()V
    .locals 0

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageList;->invalidateOptionsMenu()V

    .line 1552
    return-void
.end method
