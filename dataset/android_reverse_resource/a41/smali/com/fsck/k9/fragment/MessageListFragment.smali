.class public Lcom/fsck/k9/fragment/MessageListFragment;
.super Landroid/app/Fragment;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/fsck/k9/fragment/ConfirmationDialogFragment$ConfirmationDialogFragmentListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;,
        Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;,
        Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;,
        Lcom/fsck/k9/fragment/MessageListFragment$FooterViewHolder;,
        Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/fsck/k9/fragment/ConfirmationDialogFragment$ConfirmationDialogFragmentListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTIVITY_CHOOSE_FOLDER_COPY:I = 0x2

.field private static final ACTIVITY_CHOOSE_FOLDER_MOVE:I = 0x1

.field private static final ARG_IS_THREAD_DISPLAY:Ljava/lang/String; = "isThreadedDisplay"

.field private static final ARG_SEARCH:Ljava/lang/String; = "searchObject"

.field private static final ARG_THREADED_LIST:Ljava/lang/String; = "showingThreadedList"

.field private static final SORT_COMPARATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/fsck/k9/Account$SortType;",
            "Ljava/util/Comparator",
            "<",
            "Landroid/database/Cursor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final STATE_ACTIVE_MESSAGE:Ljava/lang/String; = "activeMessage"

.field private static final STATE_MESSAGE_LIST:Ljava/lang/String; = "listState"

.field private static final STATE_REMOTE_SEARCH_PERFORMED:Ljava/lang/String; = "remoteSearchPerformed"

.field private static final STATE_SELECTED_MESSAGES:Ljava/lang/String; = "selectedMessages"


# instance fields
.field private account:Lcom/fsck/k9/Account;

.field private accountUuids:[Ljava/lang/String;

.field private actionMode:Landroid/view/ActionMode;

.field private final actionModeCallback:Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;

.field activeMessage:Lcom/fsck/k9/activity/MessageReference;

.field private activeMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;"
        }
    .end annotation
.end field

.field private final activityListener:Lcom/fsck/k9/activity/ActivityListener;

.field private adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

.field private allAccounts:Z

.field private cacheBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private cacheIntentFilter:Landroid/content/IntentFilter;

.field checkboxes:Z

.field contactsPictureLoader:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

.field private context:Landroid/content/Context;

.field private contextMenuUniqueId:J

.field private currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

.field private cursorValid:[Z

.field private cursors:[Landroid/database/Cursor;

.field private extraSearchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;"
        }
    .end annotation
.end field

.field private folderName:Ljava/lang/String;

.field private footerView:Landroid/view/View;

.field fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

.field private final handler:Lcom/fsck/k9/fragment/MessageListHandler;

.field private hasConnectivity:Ljava/lang/Boolean;

.field private initialized:Z

.field private isThreadDisplay:Z

.field private layoutInflater:Landroid/view/LayoutInflater;

.field listView:Landroid/widget/ListView;

.field private loaderJustInitialized:Z

.field private localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field messageHelper:Lcom/fsck/k9/helper/MessageHelper;

.field private messagingController:Lcom/fsck/k9/controller/MessagingController;

.field private preferences:Lcom/fsck/k9/Preferences;

.field previewLines:I

.field private remoteSearchFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private remoteSearchPerformed:Z

.field savedListState:Landroid/os/Parcelable;

.field private search:Lcom/fsck/k9/search/LocalSearch;

.field selected:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private selectedCount:I

.field senderAboveSubject:Z

.field showingThreadedList:Z

.field private singleAccountMode:Z

.field private singleFolderMode:Z

.field private sortAscending:Z

.field private sortDateAscending:Z

.field private sortType:Lcom/fsck/k9/Account$SortType;

.field stars:Z

.field private swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private title:Ljava/lang/String;

.field uniqueIdColumn:I

.field private unreadMessageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 144
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/fsck/k9/Account$SortType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 146
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/fsck/k9/Account$SortType;Ljava/util/Comparator<Landroid/database/Cursor;>;>;"
    sget-object v1, Lcom/fsck/k9/Account$SortType;->SORT_ATTACHMENT:Lcom/fsck/k9/Account$SortType;

    new-instance v2, Lcom/fsck/k9/fragment/MessageListFragmentComparators$AttachmentComparator;

    invoke-direct {v2}, Lcom/fsck/k9/fragment/MessageListFragmentComparators$AttachmentComparator;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lcom/fsck/k9/Account$SortType;->SORT_DATE:Lcom/fsck/k9/Account$SortType;

    new-instance v2, Lcom/fsck/k9/fragment/MessageListFragmentComparators$DateComparator;

    invoke-direct {v2}, Lcom/fsck/k9/fragment/MessageListFragmentComparators$DateComparator;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/fsck/k9/Account$SortType;->SORT_ARRIVAL:Lcom/fsck/k9/Account$SortType;

    new-instance v2, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ArrivalComparator;

    invoke-direct {v2}, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ArrivalComparator;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lcom/fsck/k9/Account$SortType;->SORT_FLAGGED:Lcom/fsck/k9/Account$SortType;

    new-instance v2, Lcom/fsck/k9/fragment/MessageListFragmentComparators$FlaggedComparator;

    invoke-direct {v2}, Lcom/fsck/k9/fragment/MessageListFragmentComparators$FlaggedComparator;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/fsck/k9/Account$SortType;->SORT_SUBJECT:Lcom/fsck/k9/Account$SortType;

    new-instance v2, Lcom/fsck/k9/fragment/MessageListFragmentComparators$SubjectComparator;

    invoke-direct {v2}, Lcom/fsck/k9/fragment/MessageListFragmentComparators$SubjectComparator;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lcom/fsck/k9/Account$SortType;->SORT_SENDER:Lcom/fsck/k9/Account$SortType;

    new-instance v2, Lcom/fsck/k9/fragment/MessageListFragmentComparators$SenderComparator;

    invoke-direct {v2}, Lcom/fsck/k9/fragment/MessageListFragmentComparators$SenderComparator;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/fsck/k9/Account$SortType;->SORT_UNREAD:Lcom/fsck/k9/Account$SortType;

    new-instance v2, Lcom/fsck/k9/fragment/MessageListFragmentComparators$UnreadComparator;

    invoke-direct {v2}, Lcom/fsck/k9/fragment/MessageListFragmentComparators$UnreadComparator;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/fsck/k9/fragment/MessageListFragment;->SORT_COMPARATORS:Ljava/util/Map;

    .line 156
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 162
    iput v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->previewLines:I

    .line 173
    iput v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->unreadMessageCount:I

    .line 184
    iput-boolean v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->remoteSearchPerformed:Z

    .line 185
    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->remoteSearchFuture:Ljava/util/concurrent/Future;

    .line 189
    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    .line 194
    new-instance v0, Lcom/fsck/k9/fragment/MessageListHandler;

    invoke-direct {v0, p0}, Lcom/fsck/k9/fragment/MessageListHandler;-><init>(Lcom/fsck/k9/fragment/MessageListFragment;)V

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->handler:Lcom/fsck/k9/fragment/MessageListHandler;

    .line 196
    sget-object v0, Lcom/fsck/k9/Account$SortType;->SORT_DATE:Lcom/fsck/k9/Account$SortType;

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    .line 197
    iput-boolean v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortAscending:Z

    .line 198
    iput-boolean v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortDateAscending:Z

    .line 199
    iput-boolean v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->senderAboveSubject:Z

    .line 200
    iput-boolean v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->checkboxes:Z

    .line 201
    iput-boolean v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->stars:Z

    .line 203
    iput v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    .line 204
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    .line 214
    new-instance v0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;

    invoke-direct {v0, p0}, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;-><init>(Lcom/fsck/k9/fragment/MessageListFragment;)V

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionModeCallback:Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;

    .line 219
    new-instance v0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;

    invoke-direct {v0, p0}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;-><init>(Lcom/fsck/k9/fragment/MessageListFragment;)V

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    .line 227
    iput-boolean v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->initialized:Z

    .line 242
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->contextMenuUniqueId:J

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/fragment/MessageListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->onRemoteSearchRequested()V

    return-void
.end method

.method static synthetic access$1000(Lcom/fsck/k9/fragment/MessageListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleAccountMode:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/Preferences;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->preferences:Lcom/fsck/k9/Preferences;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fsck/k9/fragment/MessageListFragment;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/fsck/k9/fragment/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/fsck/k9/fragment/MessageListFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->setSelectionState(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/controller/MessagingController;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fsck/k9/fragment/MessageListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getCheckedMessages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fsck/k9/fragment/MessageListFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->onDelete(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/fsck/k9/fragment/MessageListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 110
    iget v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    return v0
.end method

.method static synthetic access$1702(Lcom/fsck/k9/fragment/MessageListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    return p1
.end method

.method static synthetic access$1800(Lcom/fsck/k9/fragment/MessageListFragment;Lcom/fsck/k9/mail/Flag;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;
    .param p1, "x1"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "x2"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/fragment/MessageListFragment;->setFlagForSelected(Lcom/fsck/k9/mail/Flag;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/fsck/k9/fragment/MessageListFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->onArchive(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListHandler;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->handler:Lcom/fsck/k9/fragment/MessageListHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/fsck/k9/fragment/MessageListFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->onSpam(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/fsck/k9/fragment/MessageListFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->onMove(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/fsck/k9/fragment/MessageListFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->onCopy(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/fsck/k9/fragment/MessageListFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/fsck/k9/fragment/MessageListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->extraSearchResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/fragment/MessageListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/fsck/k9/fragment/MessageListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->unreadMessageCount:I

    return p1
.end method

.method static synthetic access$800(Lcom/fsck/k9/fragment/MessageListFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->accountUuids:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/search/LocalSearch;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    return-object v0
.end method

.method private adapterToListViewPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1292
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v0}, Lcom/fsck/k9/fragment/MessageListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1296
    .end local p1    # "position":I
    :goto_0
    return p1

    .restart local p1    # "position":I
    :cond_0
    const/4 p1, -0x1

    goto :goto_0
.end method

.method private buildSortOrder()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2627
    sget-object v3, Lcom/fsck/k9/fragment/MessageListFragment$4;->$SwitchMap$com$fsck$k9$Account$SortType:[I

    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v4}, Lcom/fsck/k9/Account$SortType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2655
    const-string v1, "date"

    .line 2659
    .local v1, "sortColumn":Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortAscending:Z

    if-eqz v3, :cond_1

    const-string v2, " ASC"

    .line 2661
    .local v2, "sortDirection":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    sget-object v4, Lcom/fsck/k9/Account$SortType;->SORT_DATE:Lcom/fsck/k9/Account$SortType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    sget-object v4, Lcom/fsck/k9/Account$SortType;->SORT_ARRIVAL:Lcom/fsck/k9/Account$SortType;

    if-ne v3, v4, :cond_2

    .line 2662
    :cond_0
    const-string v0, ""

    .line 2667
    .local v0, "secondarySort":Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DESC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2629
    .end local v0    # "secondarySort":Ljava/lang/String;
    .end local v1    # "sortColumn":Ljava/lang/String;
    .end local v2    # "sortDirection":Ljava/lang/String;
    :pswitch_0
    const-string v1, "internal_date"

    .line 2630
    .restart local v1    # "sortColumn":Ljava/lang/String;
    goto :goto_0

    .line 2633
    .end local v1    # "sortColumn":Ljava/lang/String;
    :pswitch_1
    const-string v1, "(attachment_count < 1)"

    .line 2634
    .restart local v1    # "sortColumn":Ljava/lang/String;
    goto :goto_0

    .line 2637
    .end local v1    # "sortColumn":Ljava/lang/String;
    :pswitch_2
    const-string v1, "(flagged != 1)"

    .line 2638
    .restart local v1    # "sortColumn":Ljava/lang/String;
    goto :goto_0

    .line 2642
    .end local v1    # "sortColumn":Ljava/lang/String;
    :pswitch_3
    const-string v1, "sender_list"

    .line 2643
    .restart local v1    # "sortColumn":Ljava/lang/String;
    goto :goto_0

    .line 2646
    .end local v1    # "sortColumn":Ljava/lang/String;
    :pswitch_4
    const-string v1, "subject COLLATE NOCASE"

    .line 2647
    .restart local v1    # "sortColumn":Ljava/lang/String;
    goto :goto_0

    .line 2650
    .end local v1    # "sortColumn":Ljava/lang/String;
    :pswitch_5
    const-string v1, "read"

    .line 2651
    .restart local v1    # "sortColumn":Ljava/lang/String;
    goto :goto_0

    .line 2659
    :cond_1
    const-string v2, " DESC"

    goto :goto_1

    .line 2664
    .restart local v2    # "sortDirection":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortDateAscending:Z

    if-eqz v3, :cond_3

    const-string v3, " ASC, "

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "secondarySort":Ljava/lang/String;
    goto :goto_2

    .end local v0    # "secondarySort":Ljava/lang/String;
    :cond_3
    const-string v3, " DESC, "

    goto :goto_3

    .line 2627
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private changeSort(Lcom/fsck/k9/Account$SortType;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "sortType"    # Lcom/fsck/k9/Account$SortType;
    .param p2, "sortAscending"    # Ljava/lang/Boolean;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    .line 834
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    .line 836
    .local v0, "account":Lcom/fsck/k9/Account;
    if-eqz v0, :cond_1

    .line 837
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/Account;->setSortType(Lcom/fsck/k9/Account$SortType;)V

    .line 839
    if-nez p2, :cond_0

    .line 840
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/Account;->isSortAscending(Lcom/fsck/k9/Account$SortType;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortAscending:Z

    .line 844
    :goto_0
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    iget-boolean v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortAscending:Z

    invoke-virtual {v0, v2, v3}, Lcom/fsck/k9/Account;->setSortAscending(Lcom/fsck/k9/Account$SortType;Z)V

    .line 845
    sget-object v2, Lcom/fsck/k9/Account$SortType;->SORT_DATE:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/Account;->isSortAscending(Lcom/fsck/k9/Account$SortType;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortDateAscending:Z

    .line 847
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->preferences:Lcom/fsck/k9/Preferences;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    .line 864
    :goto_1
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->reSort()V

    .line 865
    return-void

    .line 842
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortAscending:Z

    goto :goto_0

    .line 849
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    invoke-static {v2}, Lcom/fsck/k9/K9;->setSortType(Lcom/fsck/k9/Account$SortType;)V

    .line 851
    if-nez p2, :cond_2

    .line 852
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    invoke-static {v2}, Lcom/fsck/k9/K9;->isSortAscending(Lcom/fsck/k9/Account$SortType;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortAscending:Z

    .line 856
    :goto_2
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    iget-boolean v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortAscending:Z

    invoke-static {v2, v3}, Lcom/fsck/k9/K9;->setSortAscending(Lcom/fsck/k9/Account$SortType;Z)V

    .line 857
    sget-object v2, Lcom/fsck/k9/Account$SortType;->SORT_DATE:Lcom/fsck/k9/Account$SortType;

    invoke-static {v2}, Lcom/fsck/k9/K9;->isSortAscending(Lcom/fsck/k9/Account$SortType;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortDateAscending:Z

    .line 859
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->preferences:Lcom/fsck/k9/Preferences;

    invoke-virtual {v2}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v1

    .line 860
    .local v1, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    invoke-static {v1}, Lcom/fsck/k9/K9;->save(Lcom/fsck/k9/preferences/StorageEditor;)V

    .line 861
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    goto :goto_1

    .line 854
    .end local v1    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortAscending:Z

    goto :goto_2
.end method

.method private checkCopyOrMovePossible(Ljava/util/List;Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;)Z
    .locals 9
    .param p2, "operation"    # Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;",
            "Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1858
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1881
    :cond_0
    :goto_0
    return v4

    .line 1862
    :cond_1
    const/4 v1, 0x1

    .line 1863
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/activity/MessageReference;

    .line 1864
    .local v2, "message":Lcom/fsck/k9/activity/MessageReference;
    if-eqz v1, :cond_4

    .line 1865
    const/4 v1, 0x0

    .line 1866
    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->preferences:Lcom/fsck/k9/Preferences;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 1867
    .local v0, "account":Lcom/fsck/k9/Account;
    sget-object v7, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    if-ne p2, v7, :cond_3

    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v7, v0}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lcom/fsck/k9/Account;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_3
    sget-object v7, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->COPY:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    if-ne p2, v7, :cond_4

    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 1868
    invoke-virtual {v7, v0}, Lcom/fsck/k9/controller/MessagingController;->isCopyCapable(Lcom/fsck/k9/Account;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1873
    .end local v0    # "account":Lcom/fsck/k9/Account;
    :cond_4
    sget-object v7, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    if-ne p2, v7, :cond_5

    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v7, v2}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lcom/fsck/k9/activity/MessageReference;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    sget-object v7, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->COPY:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    if-ne p2, v7, :cond_2

    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 1874
    invoke-virtual {v7, v2}, Lcom/fsck/k9/controller/MessagingController;->isCopyCapable(Lcom/fsck/k9/activity/MessageReference;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1875
    :cond_6
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0702d0

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 1877
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v2    # "message":Lcom/fsck/k9/activity/MessageReference;
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_7
    move v4, v5

    .line 1881
    goto :goto_0
.end method

.method private cleanupSelected(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2773
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2786
    :goto_0
    return-void

    .line 2777
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2778
    .local v0, "selected":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2779
    iget v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->uniqueIdColumn:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2780
    .local v2, "uniqueId":J
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2781
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2778
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 2785
    .end local v2    # "uniqueId":J
    :cond_2
    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    goto :goto_0
.end method

.method private computeBatchDirection()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 1580
    const/4 v4, 0x0

    .line 1581
    .local v4, "isBatchFlag":Z
    const/4 v5, 0x0

    .line 1583
    .local v5, "isBatchRead":Z
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v11, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v11}, Lcom/fsck/k9/fragment/MessageListAdapter;->getCount()I

    move-result v1

    .local v1, "end":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1584
    iget-object v11, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v11, v3}, Lcom/fsck/k9/fragment/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1585
    .local v0, "cursor":Landroid/database/Cursor;
    iget v11, p0, Lcom/fsck/k9/fragment/MessageListFragment;->uniqueIdColumn:I

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1587
    .local v8, "uniqueId":J
    iget-object v11, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1588
    const/16 v11, 0x8

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v7, :cond_3

    move v6, v7

    .line 1589
    .local v6, "read":Z
    :goto_1
    const/16 v11, 0x9

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v7, :cond_4

    move v2, v7

    .line 1591
    .local v2, "flagged":Z
    :goto_2
    if-nez v2, :cond_0

    .line 1592
    const/4 v4, 0x1

    .line 1594
    :cond_0
    if-nez v6, :cond_1

    .line 1595
    const/4 v5, 0x1

    .line 1598
    :cond_1
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    .line 1604
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "flagged":Z
    .end local v6    # "read":Z
    .end local v8    # "uniqueId":J
    :cond_2
    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionModeCallback:Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;

    invoke-virtual {v7, v5}, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->showMarkAsRead(Z)V

    .line 1605
    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionModeCallback:Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;

    invoke-virtual {v7, v4}, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->showFlag(Z)V

    .line 1606
    return-void

    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "uniqueId":J
    :cond_3
    move v6, v10

    .line 1588
    goto :goto_1

    .restart local v6    # "read":Z
    :cond_4
    move v2, v10

    .line 1589
    goto :goto_2

    .line 1583
    .end local v6    # "read":Z
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private computeSelectAllVisibility()V
    .locals 3

    .prologue
    .line 1576
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionModeCallback:Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;

    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListAdapter;->getCount()I

    move-result v2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->showSelectAll(Z)V

    .line 1577
    return-void

    .line 1576
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copy(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1893
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    sget-object v0, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->COPY:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->copyOrMove(Ljava/util/List;Ljava/lang/String;Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;)V

    .line 1894
    return-void
.end method

.method private copyOrMove(Ljava/util/List;Ljava/lang/String;Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;)V
    .locals 9
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "operation"    # Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1923
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1925
    .local v2, "folderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/activity/MessageReference;

    .line 1926
    .local v4, "message":Lcom/fsck/k9/activity/MessageReference;
    sget-object v7, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    if-ne p3, v7, :cond_1

    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v7, v4}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lcom/fsck/k9/activity/MessageReference;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    sget-object v7, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->COPY:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    if-ne p3, v7, :cond_4

    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 1927
    invoke-virtual {v7, v4}, Lcom/fsck/k9/controller/MessagingController;->isCopyCapable(Lcom/fsck/k9/activity/MessageReference;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1929
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0702d0

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 1930
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1972
    .end local v4    # "message":Lcom/fsck/k9/activity/MessageReference;
    :cond_3
    return-void

    .line 1938
    .restart local v4    # "message":Lcom/fsck/k9/activity/MessageReference;
    :cond_4
    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v3

    .line 1939
    .local v3, "folderName":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1944
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1945
    .local v5, "outMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    if-nez v5, :cond_5

    .line 1946
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "outMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1947
    .restart local v5    # "outMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    :cond_5
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1953
    .end local v3    # "folderName":Ljava/lang/String;
    .end local v4    # "message":Lcom/fsck/k9/activity/MessageReference;
    .end local v5    # "outMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    :cond_6
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1954
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1955
    .restart local v3    # "folderName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1956
    .restart local v5    # "outMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->preferences:Lcom/fsck/k9/Preferences;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v6}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 1958
    .local v0, "account":Lcom/fsck/k9/Account;
    sget-object v6, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    if-ne p3, v6, :cond_8

    .line 1959
    iget-boolean v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->showingThreadedList:Z

    if-eqz v6, :cond_7

    .line 1960
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v6, v0, v3, v5, p2}, Lcom/fsck/k9/controller/MessagingController;->moveMessagesInThread(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 1962
    :cond_7
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v6, v0, v3, v5, p2}, Lcom/fsck/k9/controller/MessagingController;->moveMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 1965
    :cond_8
    iget-boolean v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->showingThreadedList:Z

    if-eqz v6, :cond_9

    .line 1966
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v6, v0, v3, v5, p2}, Lcom/fsck/k9/controller/MessagingController;->copyMessagesInThread(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 1968
    :cond_9
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v6, v0, v3, v5, p2}, Lcom/fsck/k9/controller/MessagingController;->copyMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createCacheBroadcastReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 639
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 641
    new-instance v0, Lcom/fsck/k9/fragment/MessageListFragment$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/fragment/MessageListFragment$1;-><init>(Lcom/fsck/k9/fragment/MessageListFragment;)V

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->cacheBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 648
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "EmailProviderCache.ACTION_CACHE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->cacheIntentFilter:Landroid/content/IntentFilter;

    .line 649
    return-void
.end method

.method private decodeArguments()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 576
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 578
    .local v2, "args":Landroid/os/Bundle;
    const-string v5, "showingThreadedList"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->showingThreadedList:Z

    .line 579
    const-string v5, "isThreadedDisplay"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->isThreadDisplay:Z

    .line 580
    const-string v5, "searchObject"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/search/LocalSearch;

    iput-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    .line 581
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v5}, Lcom/fsck/k9/search/LocalSearch;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->title:Ljava/lang/String;

    .line 583
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v5}, Lcom/fsck/k9/search/LocalSearch;->getAccountUuids()[Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "accountUuids":[Ljava/lang/String;
    iput-boolean v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleAccountMode:Z

    .line 586
    array-length v5, v0

    if-ne v5, v8, :cond_0

    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v5}, Lcom/fsck/k9/search/LocalSearch;->searchAllAccounts()Z

    move-result v5

    if-nez v5, :cond_0

    .line 587
    iput-boolean v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleAccountMode:Z

    .line 588
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->preferences:Lcom/fsck/k9/Preferences;

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    .line 591
    :cond_0
    iput-boolean v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleFolderMode:Z

    .line 592
    iget-boolean v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleAccountMode:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v5}, Lcom/fsck/k9/search/LocalSearch;->getFolderNames()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 593
    iput-boolean v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleFolderMode:Z

    .line 594
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v5}, Lcom/fsck/k9/search/LocalSearch;->getFolderNames()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    .line 595
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    invoke-direct {p0, v5, v6}, Lcom/fsck/k9/fragment/MessageListFragment;->getFolderInfoHolder(Ljava/lang/String;Lcom/fsck/k9/Account;)Lcom/fsck/k9/activity/FolderInfoHolder;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 598
    :cond_1
    iput-boolean v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->allAccounts:Z

    .line 599
    iget-boolean v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleAccountMode:Z

    if-eqz v5, :cond_3

    .line 600
    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    iput-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->accountUuids:[Ljava/lang/String;

    .line 621
    :cond_2
    :goto_0
    return-void

    .line 602
    :cond_3
    array-length v5, v0

    if-ne v5, v8, :cond_5

    aget-object v5, v0, v7

    const-string v6, "allAccounts"

    .line 603
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 604
    iput-boolean v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->allAccounts:Z

    .line 606
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->preferences:Lcom/fsck/k9/Preferences;

    invoke-virtual {v5}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v1

    .line 608
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->accountUuids:[Ljava/lang/String;

    .line 609
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "len":I
    :goto_1
    if-ge v3, v4, :cond_4

    .line 610
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->accountUuids:[Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    .line 609
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 613
    :cond_4
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->accountUuids:[Ljava/lang/String;

    array-length v5, v5

    if-ne v5, v8, :cond_2

    .line 614
    iput-boolean v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleAccountMode:Z

    .line 615
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/Account;

    iput-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    goto :goto_0

    .line 618
    .end local v1    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    .end local v3    # "i":I
    .end local v4    # "len":I
    :cond_5
    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->accountUuids:[Ljava/lang/String;

    goto :goto_0
.end method

.method private displayFolderChoice(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "sourceFolderName"    # Ljava/lang/String;
    .param p3, "accountUuid"    # Ljava/lang/String;
    .param p4, "lastSelectedFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1760
    .local p5, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/fsck/k9/activity/ChooseFolder;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1761
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.fsck.k9.ChooseFolder_account"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1762
    const-string v1, "com.fsck.k9.ChooseFolder_selfolder"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1764
    if-nez p2, :cond_0

    .line 1765
    const-string v1, "com.fsck.k9.ChooseFolder_showcurrent"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1771
    :goto_0
    iput-object p5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessages:Ljava/util/List;

    .line 1772
    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1773
    return-void

    .line 1767
    :cond_0
    const-string v1, "com.fsck.k9.ChooseFolder_curfolder"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getAdapterPositionForSelectedMessage()I
    .locals 2

    .prologue
    .line 2404
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 2405
    .local v0, "listViewPosition":I
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->listViewToAdapterPosition(I)I

    move-result v1

    return v1
.end method

.method private getCheckedMessages()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2434
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2435
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    const/4 v4, 0x0

    .local v4, "position":I
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v5}, Lcom/fsck/k9/fragment/MessageListAdapter;->getCount()I

    move-result v1

    .local v1, "end":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 2436
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v5, v4}, Lcom/fsck/k9/fragment/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2437
    .local v0, "cursor":Landroid/database/Cursor;
    iget v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->uniqueIdColumn:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2439
    .local v6, "uniqueId":J
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2440
    invoke-direct {p0, v4}, Lcom/fsck/k9/fragment/MessageListFragment;->getMessageAtPosition(I)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v2

    .line 2441
    .local v2, "message":Lcom/fsck/k9/activity/MessageReference;
    if-eqz v2, :cond_0

    .line 2442
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2435
    .end local v2    # "message":Lcom/fsck/k9/activity/MessageReference;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2447
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v6    # "uniqueId":J
    :cond_1
    return-object v3
.end method

.method private getComparator()Ljava/util/Comparator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    .local v0, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/util/Comparator<Landroid/database/Cursor;>;>;"
    sget-object v3, Lcom/fsck/k9/fragment/MessageListFragment;->SORT_COMPARATORS:Ljava/util/Map;

    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    .line 257
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/database/Cursor;>;"
    iget-boolean v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortAscending:Z

    if-eqz v3, :cond_1

    .line 258
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    sget-object v4, Lcom/fsck/k9/Account$SortType;->SORT_DATE:Lcom/fsck/k9/Account$SortType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    sget-object v4, Lcom/fsck/k9/Account$SortType;->SORT_ARRIVAL:Lcom/fsck/k9/Account$SortType;

    if-eq v3, v4, :cond_0

    .line 265
    sget-object v3, Lcom/fsck/k9/fragment/MessageListFragment;->SORT_COMPARATORS:Ljava/util/Map;

    sget-object v4, Lcom/fsck/k9/Account$SortType;->SORT_DATE:Lcom/fsck/k9/Account$SortType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Comparator;

    .line 266
    .local v2, "dateComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/database/Cursor;>;"
    iget-boolean v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortDateAscending:Z

    if-eqz v3, :cond_2

    .line 267
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v2    # "dateComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/database/Cursor;>;"
    :cond_0
    :goto_1
    new-instance v3, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseIdComparator;

    invoke-direct {v3}, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseIdComparator;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v3, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ComparatorChain;

    invoke-direct {v3, v0}, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ComparatorChain;-><init>(Ljava/util/List;)V

    return-object v3

    .line 260
    :cond_1
    new-instance v3, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseComparator;

    invoke-direct {v3, v1}, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseComparator;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    .restart local v2    # "dateComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/database/Cursor;>;"
    :cond_2
    new-instance v3, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseComparator;

    invoke-direct {v3, v2}, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseComparator;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getDialogTag(I)Ljava/lang/String;
    .locals 2
    .param p1, "dialogId"    # I

    .prologue
    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFolderInfoHolder(Ljava/lang/String;Lcom/fsck/k9/Account;)Lcom/fsck/k9/activity/FolderInfoHolder;
    .locals 4
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 653
    :try_start_0
    invoke-static {p1, p2}, Lcom/fsck/k9/fragment/MlfUtils;->getOpenFolder(Ljava/lang/String;Lcom/fsck/k9/Account;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v1

    .line 654
    .local v1, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    new-instance v2, Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v1, p2}, Lcom/fsck/k9/activity/FolderInfoHolder;-><init>(Landroid/content/Context;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/Account;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 655
    .end local v1    # "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getFooterView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->footerView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1413
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03002d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->footerView:Landroid/view/View;

    .line 1414
    new-instance v0, Lcom/fsck/k9/fragment/MessageListFragment$FooterViewHolder;

    invoke-direct {v0}, Lcom/fsck/k9/fragment/MessageListFragment$FooterViewHolder;-><init>()V

    .line 1415
    .local v0, "holder":Lcom/fsck/k9/fragment/MessageListFragment$FooterViewHolder;
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->footerView:Landroid/view/View;

    const v2, 0x7f0c00cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/fsck/k9/fragment/MessageListFragment$FooterViewHolder;->main:Landroid/widget/TextView;

    .line 1416
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->footerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1419
    .end local v0    # "holder":Lcom/fsck/k9/fragment/MessageListFragment$FooterViewHolder;
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->footerView:Landroid/view/View;

    return-object v1
.end method

.method private getMessageAtPosition(I)Lcom/fsck/k9/activity/MessageReference;
    .locals 6
    .param p1, "adapterPosition"    # I

    .prologue
    const/4 v4, 0x0

    .line 2420
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 2430
    :goto_0
    return-object v4

    .line 2424
    :cond_0
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v5, p1}, Lcom/fsck/k9/fragment/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 2426
    .local v1, "cursor":Landroid/database/Cursor;
    const/16 v5, 0x11

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2427
    .local v0, "accountUuid":Ljava/lang/String;
    const/16 v5, 0x12

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2428
    .local v2, "folderName":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2430
    .local v3, "messageUid":Ljava/lang/String;
    new-instance v5, Lcom/fsck/k9/activity/MessageReference;

    invoke-direct {v5, v0, v2, v3, v4}, Lcom/fsck/k9/activity/MessageReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Flag;)V

    move-object v4, v5

    goto :goto_0
.end method

.method private getPosition(Lcom/fsck/k9/activity/MessageReference;)I
    .locals 7
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 2355
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v6}, Lcom/fsck/k9/fragment/MessageListAdapter;->getCount()I

    move-result v4

    .local v4, "len":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 2356
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v6, v3}, Lcom/fsck/k9/fragment/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 2358
    .local v1, "cursor":Landroid/database/Cursor;
    const/16 v6, 0x11

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2359
    .local v0, "accountUuid":Ljava/lang/String;
    const/16 v6, 0x12

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2360
    .local v2, "folderName":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2362
    .local v5, "uid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2363
    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2364
    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2369
    .end local v0    # "accountUuid":Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "folderName":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "uid":Ljava/lang/String;
    :goto_1
    return v3

    .line 2355
    .restart local v0    # "accountUuid":Ljava/lang/String;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "folderName":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "uid":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2369
    .end local v0    # "accountUuid":Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "folderName":Ljava/lang/String;
    .end local v5    # "uid":Ljava/lang/String;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private getPositionForUniqueId(J)I
    .locals 7
    .param p1, "uniqueId"    # J

    .prologue
    .line 2409
    const/4 v2, 0x0

    .local v2, "position":I
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v3}, Lcom/fsck/k9/fragment/MessageListAdapter;->getCount()I

    move-result v1

    .local v1, "end":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2410
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v3, v2}, Lcom/fsck/k9/fragment/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2411
    .local v0, "cursor":Landroid/database/Cursor;
    iget v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->uniqueIdColumn:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 2416
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "position":I
    :goto_1
    return v2

    .line 2409
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "position":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2416
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getReferenceForPosition(I)Lcom/fsck/k9/activity/MessageReference;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 2329
    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v4, p1}, Lcom/fsck/k9/fragment/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 2331
    .local v1, "cursor":Landroid/database/Cursor;
    const/16 v4, 0x11

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2332
    .local v0, "accountUuid":Ljava/lang/String;
    const/16 v4, 0x12

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2333
    .local v2, "folderName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2334
    .local v3, "messageUid":Ljava/lang/String;
    new-instance v4, Lcom/fsck/k9/activity/MessageReference;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v2, v3, v5}, Lcom/fsck/k9/activity/MessageReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Flag;)V

    return-object v4
.end method

.method private getSelectedMessage()Lcom/fsck/k9/activity/MessageReference;
    .locals 3

    .prologue
    .line 2397
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    .line 2398
    .local v1, "listViewPosition":I
    invoke-direct {p0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->listViewToAdapterPosition(I)I

    move-result v0

    .line 2400
    .local v0, "adapterPosition":I
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->getMessageAtPosition(I)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v2

    return-object v2
.end method

.method private getThreadId(Lcom/fsck/k9/search/LocalSearch;)Ljava/lang/String;
    .locals 5
    .param p1, "search"    # Lcom/fsck/k9/search/LocalSearch;

    .prologue
    .line 2615
    invoke-virtual {p1}, Lcom/fsck/k9/search/LocalSearch;->getLeafSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 2616
    .local v1, "node":Lcom/fsck/k9/search/ConditionsTreeNode;
    iget-object v0, v1, Lcom/fsck/k9/search/ConditionsTreeNode;->mCondition:Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    .line 2617
    .local v0, "condition":Lcom/fsck/k9/search/SearchSpecification$SearchCondition;
    iget-object v3, v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->field:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v4, Lcom/fsck/k9/search/SearchSpecification$SearchField;->THREAD_ID:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    if-ne v3, v4, :cond_0

    .line 2618
    iget-object v2, v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;->value:Ljava/lang/String;

    .line 2622
    .end local v0    # "condition":Lcom/fsck/k9/search/SearchSpecification$SearchCondition;
    .end local v1    # "node":Lcom/fsck/k9/search/ConditionsTreeNode;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private groupMessagesByAccount(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1793
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1794
    .local v2, "messagesByAccount":Ljava/util/Map;, "Ljava/util/Map<Lcom/fsck/k9/Account;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/MessageReference;

    .line 1795
    .local v1, "message":Lcom/fsck/k9/activity/MessageReference;
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->preferences:Lcom/fsck/k9/Preferences;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 1797
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1798
    .local v3, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    if-nez v3, :cond_0

    .line 1799
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1800
    .restart local v3    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1805
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v1    # "message":Lcom/fsck/k9/activity/MessageReference;
    .end local v3    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    :cond_1
    return-object v2
.end method

.method private handleSwipe(Landroid/view/MotionEvent;Z)V
    .locals 8
    .param p1, "downMotion"    # Landroid/view/MotionEvent;
    .param p2, "selected"    # Z

    .prologue
    .line 1263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v5, v7

    .line 1264
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v6, v7

    .line 1266
    .local v6, "y":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1267
    .local v0, "headerRect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1270
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1271
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 1272
    .local v1, "listPosition":[I
    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 1274
    const/4 v7, 0x0

    aget v7, v1, v7

    sub-int v3, v5, v7

    .line 1275
    .local v3, "listX":I
    const/4 v7, 0x1

    aget v7, v1, v7

    sub-int v4, v6, v7

    .line 1277
    .local v4, "listY":I
    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v7, v3, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v2

    .line 1279
    .local v2, "listViewPosition":I
    invoke-direct {p0, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->toggleMessageSelect(I)V

    .line 1281
    .end local v1    # "listPosition":[I
    .end local v2    # "listViewPosition":I
    .end local v3    # "listX":I
    .end local v4    # "listY":I
    :cond_0
    return-void
.end method

.method private initializeLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 758
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 759
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 760
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 761
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 762
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 764
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 765
    return-void
.end method

.method private initializeMessageList()V
    .locals 2

    .prologue
    .line 624
    new-instance v0, Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-direct {v0, p0}, Lcom/fsck/k9/fragment/MessageListAdapter;-><init>(Lcom/fsck/k9/fragment/MessageListFragment;)V

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    .line 626
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->getFolderInfoHolder(Ljava/lang/String;Lcom/fsck/k9/Account;)Lcom/fsck/k9/activity/FolderInfoHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 630
    :cond_0
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleFolderMode:Z

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->getFooterView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 632
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->updateFooterView()V

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 636
    return-void
.end method

.method private initializePullToRefresh(Landroid/view/View;)V
    .locals 2
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    .line 730
    const v0, 0x7f0c00bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 731
    const v0, 0x7f0c00c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    .line 733
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isRemoteSearchAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/fsck/k9/fragment/MessageListFragment$2;

    invoke-direct {v1, p0}, Lcom/fsck/k9/fragment/MessageListFragment$2;-><init>(Lcom/fsck/k9/fragment/MessageListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 754
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 755
    return-void

    .line 742
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isCheckMailSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/fsck/k9/fragment/MessageListFragment$3;

    invoke-direct {v1, p0}, Lcom/fsck/k9/fragment/MessageListFragment$3;-><init>(Lcom/fsck/k9/fragment/MessageListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    goto :goto_0
.end method

.method private initializeSortSettings()V
    .locals 2

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleAccountMode:Z

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getSortType()Lcom/fsck/k9/Account$SortType;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    .line 566
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->isSortAscending(Lcom/fsck/k9/Account$SortType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortAscending:Z

    .line 567
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    sget-object v1, Lcom/fsck/k9/Account$SortType;->SORT_DATE:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->isSortAscending(Lcom/fsck/k9/Account$SortType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortDateAscending:Z

    .line 573
    :goto_0
    return-void

    .line 569
    :cond_0
    invoke-static {}, Lcom/fsck/k9/K9;->getSortType()Lcom/fsck/k9/Account$SortType;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    .line 570
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    invoke-static {v0}, Lcom/fsck/k9/K9;->isSortAscending(Lcom/fsck/k9/Account$SortType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortAscending:Z

    .line 571
    sget-object v0, Lcom/fsck/k9/Account$SortType;->SORT_DATE:Lcom/fsck/k9/Account$SortType;

    invoke-static {v0}, Lcom/fsck/k9/K9;->isSortAscending(Lcom/fsck/k9/Account$SortType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortDateAscending:Z

    goto :goto_0
.end method

.method private isCheckMailAllowed()Z
    .locals 1

    .prologue
    .line 2914
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isManualSearch()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isCheckMailSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPullToRefreshAllowed()Z
    .locals 1

    .prologue
    .line 2918
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isRemoteSearchAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isCheckMailAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private listViewToAdapterPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1284
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v0}, Lcom/fsck/k9/fragment/MessageListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1288
    .end local p1    # "position":I
    :goto_0
    return p1

    .restart local p1    # "position":I
    :cond_0
    const/4 p1, -0x1

    goto :goto_0
.end method

.method private markAllAsRead()V
    .locals 3

    .prologue
    .line 2903
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isMarkAllAsReadSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2904
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->markAllMessagesRead(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 2906
    :cond_0
    return-void
.end method

.method private move(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1905
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    sget-object v0, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->copyOrMove(Ljava/util/List;Ljava/lang/String;Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;)V

    .line 1906
    return-void
.end method

.method public static newInstance(Lcom/fsck/k9/search/LocalSearch;ZZ)Lcom/fsck/k9/fragment/MessageListFragment;
    .locals 3
    .param p0, "search"    # Lcom/fsck/k9/search/LocalSearch;
    .param p1, "isThreadDisplay"    # Z
    .param p2, "threadedList"    # Z

    .prologue
    .line 115
    new-instance v1, Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-direct {v1}, Lcom/fsck/k9/fragment/MessageListFragment;-><init>()V

    .line 116
    .local v1, "fragment":Lcom/fsck/k9/fragment/MessageListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "searchObject"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    const-string v2, "isThreadedDisplay"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    const-string v2, "showingThreadedList"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    invoke-virtual {v1, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 121
    return-object v1
.end method

.method private onArchive(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 1
    .param p1, "message"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 1776
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->onArchive(Ljava/util/List;)V

    .line 1777
    return-void
.end method

.method private onArchive(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1780
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->groupMessagesByAccount(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    .line 1782
    .local v3, "messagesByAccount":Ljava/util/Map;, "Ljava/util/Map<Lcom/fsck/k9/Account;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1783
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fsck/k9/Account;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 1784
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getArchiveFolderName()Ljava/lang/String;

    move-result-object v1

    .line 1786
    .local v1, "archiveFolder":Ljava/lang/String;
    const-string v4, "-NONE-"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1787
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->move(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1790
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v1    # "archiveFolder":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fsck/k9/Account;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    :cond_1
    return-void
.end method

.method private onCopy(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 1
    .param p1, "message"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 1714
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->onCopy(Ljava/util/List;)V

    .line 1715
    return-void
.end method

.method private onCopy(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    const/4 v3, 0x0

    .line 1724
    sget-object v0, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->COPY:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->checkCopyOrMovePossible(Ljava/util/List;Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1741
    :goto_0
    return-void

    .line 1729
    :cond_0
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->isThreadDisplay:Z

    if-eqz v0, :cond_1

    .line 1730
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v2

    .line 1737
    .local v2, "folderName":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x2

    .line 1738
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 1737
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/fragment/MessageListFragment;->displayFolderChoice(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1731
    .end local v2    # "folderName":Ljava/lang/String;
    :cond_1
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleFolderMode:Z

    if-eqz v0, :cond_2

    .line 1732
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->folder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "folderName":Ljava/lang/String;
    goto :goto_1

    .line 1734
    .end local v2    # "folderName":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "folderName":Ljava/lang/String;
    goto :goto_1
.end method

.method private onDebugClearLocally(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 2
    .param p1, "message"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->debugClearMessagesLocally(Ljava/util/List;)V

    .line 1745
    return-void
.end method

.method private onDelete(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 1
    .param p1, "message"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 900
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->onDelete(Ljava/util/List;)V

    .line 901
    return-void
.end method

.method private onDelete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 904
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-static {}, Lcom/fsck/k9/K9;->confirmDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessages:Ljava/util/List;

    .line 907
    const v0, 0x7f0c0002

    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->showDialog(I)V

    .line 911
    :goto_0
    return-void

    .line 909
    :cond_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->onDeleteConfirmed(Ljava/util/List;)V

    goto :goto_0
.end method

.method private onDeleteConfirmed(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 914
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->showingThreadedList:Z

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/controller/MessagingController;->deleteThreads(Ljava/util/List;)V

    .line 919
    :goto_0
    return-void

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/controller/MessagingController;->deleteMessages(Ljava/util/List;Lcom/fsck/k9/controller/MessagingListener;)V

    goto :goto_0
.end method

.method private onExpunge(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 967
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/controller/MessagingController;->expunge(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 968
    return-void
.end method

.method private onForward(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 1
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v0, p1}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->onForward(Lcom/fsck/k9/activity/MessageReference;)V

    .line 789
    return-void
.end method

.method private onMove(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 1
    .param p1, "message"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 1684
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->onMove(Ljava/util/List;)V

    .line 1685
    return-void
.end method

.method private onMove(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    const/4 v3, 0x0

    .line 1694
    sget-object v0, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->checkCopyOrMovePossible(Ljava/util/List;Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1711
    :goto_0
    return-void

    .line 1699
    :cond_0
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->isThreadDisplay:Z

    if-eqz v0, :cond_1

    .line 1700
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v2

    .line 1708
    .local v2, "folderName":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x1

    .line 1709
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 1708
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/fragment/MessageListFragment;->displayFolderChoice(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1701
    .end local v2    # "folderName":Ljava/lang/String;
    :cond_1
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleFolderMode:Z

    if-eqz v0, :cond_2

    .line 1702
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->folder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "folderName":Ljava/lang/String;
    goto :goto_1

    .line 1704
    .end local v2    # "folderName":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "folderName":Ljava/lang/String;
    goto :goto_1
.end method

.method private onRemoteSearchRequested()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 807
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, "searchAccount":Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-object v2, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    .line 810
    .local v2, "searchFolder":Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v0}, Lcom/fsck/k9/search/LocalSearch;->getRemoteSearchArguments()Ljava/lang/String;

    move-result-object v3

    .line 812
    .local v3, "queryString":Ljava/lang/String;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->remoteSearchPerformed:Z

    .line 813
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/fsck/k9/controller/MessagingController;->searchRemoteMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->remoteSearchFuture:Ljava/util/concurrent/Future;

    .line 816
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 818
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v0}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->remoteSearchStarted()V

    .line 819
    return-void
.end method

.method private onReply(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 1
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v0, p1}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->onReply(Lcom/fsck/k9/activity/MessageReference;)V

    .line 781
    return-void
.end method

.method private onReplyAll(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 1
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v0, p1}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->onReplyAll(Lcom/fsck/k9/activity/MessageReference;)V

    .line 785
    return-void
.end method

.method private onResendMessage(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 1
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 792
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v0, p1}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->onResendMessage(Lcom/fsck/k9/activity/MessageReference;)V

    .line 793
    return-void
.end method

.method private onSpam(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 1
    .param p1, "message"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 1809
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->onSpam(Ljava/util/List;)V

    .line 1810
    return-void
.end method

.method private onSpam(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1819
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-static {}, Lcom/fsck/k9/K9;->confirmSpam()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1821
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessages:Ljava/util/List;

    .line 1822
    const v0, 0x7f0c0004

    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->showDialog(I)V

    .line 1826
    :goto_0
    return-void

    .line 1824
    :cond_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->onSpamConfirmed(Ljava/util/List;)V

    goto :goto_0
.end method

.method private onSpamConfirmed(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1829
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->groupMessagesByAccount(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 1831
    .local v2, "messagesByAccount":Ljava/util/Map;, "Ljava/util/Map<Lcom/fsck/k9/Account;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1832
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fsck/k9/Account;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 1833
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getSpamFolderName()Ljava/lang/String;

    move-result-object v3

    .line 1835
    .local v3, "spamFolder":Ljava/lang/String;
    const-string v4, "-NONE-"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1836
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->move(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1839
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fsck/k9/Account;Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;>;"
    .end local v3    # "spamFolder":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private onToggleFlag(Lcom/fsck/k9/mail/Flag;I)V
    .locals 6
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "flagColumn"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2470
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getAdapterPositionForSelectedMessage()I

    move-result v0

    .line 2471
    .local v0, "adapterPosition":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 2478
    :goto_0
    return-void

    .line 2475
    :cond_0
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v5, v0}, Lcom/fsck/k9/fragment/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 2476
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 2477
    .local v2, "flagState":Z
    :goto_1
    if-nez v2, :cond_2

    :goto_2
    invoke-direct {p0, v0, p1, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->setFlag(ILcom/fsck/k9/mail/Flag;Z)V

    goto :goto_0

    .end local v2    # "flagState":Z
    :cond_1
    move v2, v4

    .line 2476
    goto :goto_1

    .restart local v2    # "flagState":Z
    :cond_2
    move v3, v4

    .line 2477
    goto :goto_2
.end method

.method private openMessageAtPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2339
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->adapterToListViewPosition(I)I

    move-result v0

    .line 2340
    .local v0, "listViewPosition":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    .line 2341
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    .line 2342
    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 2343
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 2346
    :cond_1
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->getReferenceForPosition(I)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v1

    .line 2351
    .local v1, "ref":Lcom/fsck/k9/activity/MessageReference;
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->handler:Lcom/fsck/k9/fragment/MessageListHandler;

    invoke-virtual {v2, v1}, Lcom/fsck/k9/fragment/MessageListHandler;->openMessage(Lcom/fsck/k9/activity/MessageReference;)V

    .line 2352
    return-void
.end method

.method private reSort()V
    .locals 7

    .prologue
    .line 868
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    iget-boolean v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortAscending:Z

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account$SortType;->getToast(Z)I

    move-result v4

    .line 870
    .local v4, "toastString":I
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 871
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 873
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    .line 874
    .local v2, "loaderManager":Landroid/app/LoaderManager;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->accountUuids:[Ljava/lang/String;

    array-length v1, v5

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 875
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 874
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 877
    :cond_0
    return-void
.end method

.method private recalculateSelectionCount()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 2821
    iget-boolean v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->showingThreadedList:Z

    if-nez v7, :cond_1

    .line 2822
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    iput v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    .line 2836
    :cond_0
    return-void

    .line 2826
    :cond_1
    const/4 v7, 0x0

    iput v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    .line 2827
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v7}, Lcom/fsck/k9/fragment/MessageListAdapter;->getCount()I

    move-result v1

    .local v1, "end":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2828
    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v7, v2}, Lcom/fsck/k9/fragment/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2829
    .local v0, "cursor":Landroid/database/Cursor;
    iget v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->uniqueIdColumn:I

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2831
    .local v4, "uniqueId":J
    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2832
    const/16 v7, 0x13

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2833
    .local v3, "threadCount":I
    iget v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    if-le v3, v6, :cond_3

    .end local v3    # "threadCount":I
    :goto_1
    add-int/2addr v7, v3

    iput v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    .line 2827
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v3    # "threadCount":I
    :cond_3
    move v3, v6

    .line 2833
    goto :goto_1
.end method

.method private resetActionMode()V
    .locals 1

    .prologue
    .line 2792
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2793
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2794
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2805
    :cond_0
    :goto_0
    return-void

    .line 2799
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_2

    .line 2800
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->startAndPrepareActionMode()V

    .line 2803
    :cond_2
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->recalculateSelectionCount()V

    .line 2804
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->updateActionModeTitle()V

    goto :goto_0
.end method

.method private restartLoader()V
    .locals 4

    .prologue
    .line 717
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->cursorValid:[Z

    if-nez v2, :cond_1

    .line 727
    :cond_0
    return-void

    .line 722
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 723
    .local v1, "loaderManager":Landroid/app/LoaderManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->accountUuids:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 724
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 725
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->cursorValid:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 518
    if-nez p1, :cond_0

    .line 528
    :goto_0
    return-void

    .line 522
    :cond_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->restoreSelectedMessages(Landroid/os/Bundle;)V

    .line 524
    const-string v1, "remoteSearchPerformed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->remoteSearchPerformed:Z

    .line 525
    const-string v1, "listState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->savedListState:Landroid/os/Parcelable;

    .line 526
    const-string v1, "activeMessage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "messageReferenceString":Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageReference;->parse(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessage:Lcom/fsck/k9/activity/MessageReference;

    goto :goto_0
.end method

.method private restoreSelectedMessages(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 546
    const-string v3, "selectedMessages"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 547
    .local v2, "selected":[J
    if-eqz v2, :cond_0

    .line 548
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, v2, v3

    .line 549
    .local v0, "id":J
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 548
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 552
    .end local v0    # "id":J
    :cond_0
    return-void
.end method

.method private saveListState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->savedListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 557
    const-string v0, "listState"

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->savedListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 559
    const-string v0, "listState"

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private saveSelectedMessages(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 534
    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v3, v4, [J

    .line 535
    .local v3, "selected":[J
    const/4 v0, 0x0

    .line 536
    .local v0, "i":I
    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 537
    .local v2, "id":Ljava/lang/Long;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v0

    move v0, v1

    .line 538
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 539
    .end local v2    # "id":Ljava/lang/Long;
    :cond_0
    const-string v4, "selectedMessages"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 540
    return-void
.end method

.method private setFlag(ILcom/fsck/k9/mail/Flag;Z)V
    .locals 8
    .param p1, "adapterPosition"    # I
    .param p2, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p3, "newState"    # Z

    .prologue
    .line 1609
    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    .line 1627
    :goto_0
    return-void

    .line 1613
    :cond_0
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v6, p1}, Lcom/fsck/k9/fragment/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 1614
    .local v1, "cursor":Landroid/database/Cursor;
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->preferences:Lcom/fsck/k9/Preferences;

    const/16 v7, 0x11

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 1616
    .local v0, "account":Lcom/fsck/k9/Account;
    iget-boolean v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->showingThreadedList:Z

    if-eqz v6, :cond_1

    const/16 v6, 0x13

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 1617
    const/16 v6, 0x10

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1618
    .local v4, "threadRootId":J
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 1619
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 1618
    invoke-virtual {v6, v0, v7, p2, p3}, Lcom/fsck/k9/controller/MessagingController;->setFlagForThreads(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V

    .line 1626
    .end local v4    # "threadRootId":J
    :goto_1
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->computeBatchDirection()V

    goto :goto_0

    .line 1621
    :cond_1
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1622
    .local v2, "id":J
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v0, v7, p2, p3}, Lcom/fsck/k9/controller/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_1
.end method

.method private setFlagForSelected(Lcom/fsck/k9/mail/Flag;Z)V
    .locals 20
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "newState"    # Z

    .prologue
    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1681
    :goto_0
    return-void

    .line 1634
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1635
    .local v10, "messageMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/fsck/k9/Account;Ljava/util/List<Ljava/lang/Long;>;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1636
    .local v12, "threadMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/fsck/k9/Account;Ljava/util/List<Ljava/lang/Long;>;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1638
    .local v5, "accounts":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/Account;>;"
    const/4 v11, 0x0

    .local v11, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/fragment/MessageListAdapter;->getCount()I

    move-result v7

    .local v7, "end":I
    :goto_1
    if-ge v11, v7, :cond_5

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/fsck/k9/fragment/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 1640
    .local v6, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->uniqueIdColumn:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1642
    .local v16, "uniqueId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1643
    const/16 v18, 0x11

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1644
    .local v15, "uuid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->preferences:Lcom/fsck/k9/Preferences;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v4

    .line 1645
    .local v4, "account":Lcom/fsck/k9/Account;
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1647
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->showingThreadedList:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    const/16 v18, 0x13

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 1648
    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 1649
    .local v13, "threadRootIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v13, :cond_1

    .line 1650
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "threadRootIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1651
    .restart local v13    # "threadRootIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v12, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    :cond_1
    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1638
    .end local v4    # "account":Lcom/fsck/k9/Account;
    .end local v13    # "threadRootIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v15    # "uuid":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1656
    .restart local v4    # "account":Lcom/fsck/k9/Account;
    .restart local v15    # "uuid":Ljava/lang/String;
    :cond_3
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1657
    .local v8, "messageIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v8, :cond_4

    .line 1658
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "messageIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1659
    .restart local v8    # "messageIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v10, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    :cond_4
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1667
    .end local v4    # "account":Lcom/fsck/k9/Account;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "messageIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v15    # "uuid":Ljava/lang/String;
    .end local v16    # "uniqueId":J
    :cond_5
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_6
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/Account;

    .line 1668
    .restart local v4    # "account":Lcom/fsck/k9/Account;
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1669
    .local v9, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 1671
    .local v14, "threadRootIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v9, :cond_7

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v4, v9, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V

    .line 1675
    :cond_7
    if-eqz v14, :cond_6

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v4, v14, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->setFlagForThreads(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_3

    .line 1680
    .end local v4    # "account":Lcom/fsck/k9/Account;
    .end local v9    # "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v14    # "threadRootIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/fragment/MessageListFragment;->computeBatchDirection()V

    goto/16 :goto_0
.end method

.method private setSelectionState(Z)V
    .locals 9
    .param p1, "selected"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1474
    if-eqz p1, :cond_6

    .line 1475
    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v7}, Lcom/fsck/k9/fragment/MessageListAdapter;->getCount()I

    move-result v7

    if-nez v7, :cond_0

    .line 1510
    :goto_0
    return-void

    .line 1480
    :cond_0
    iput v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    .line 1481
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v7}, Lcom/fsck/k9/fragment/MessageListAdapter;->getCount()I

    move-result v1

    .local v1, "end":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1482
    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v7, v2}, Lcom/fsck/k9/fragment/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1483
    .local v0, "cursor":Landroid/database/Cursor;
    iget v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->uniqueIdColumn:I

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1484
    .local v4, "uniqueId":J
    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1486
    iget-boolean v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->showingThreadedList:Z

    if-eqz v7, :cond_2

    .line 1487
    const/16 v7, 0x13

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1488
    .local v3, "threadCount":I
    iget v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    if-le v3, v6, :cond_1

    .end local v3    # "threadCount":I
    :goto_2
    add-int/2addr v7, v3

    iput v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    .line 1481
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .restart local v3    # "threadCount":I
    :cond_1
    move v3, v6

    .line 1488
    goto :goto_2

    .line 1490
    .end local v3    # "threadCount":I
    :cond_2
    iget v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    goto :goto_3

    .line 1494
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v4    # "uniqueId":J
    :cond_3
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionMode:Landroid/view/ActionMode;

    if-nez v6, :cond_4

    .line 1495
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->startAndPrepareActionMode()V

    .line 1497
    :cond_4
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->computeBatchDirection()V

    .line 1498
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->updateActionModeTitle()V

    .line 1499
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->computeSelectAllVisibility()V

    .line 1509
    .end local v1    # "end":I
    .end local v2    # "i":I
    :cond_5
    :goto_4
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v6}, Lcom/fsck/k9/fragment/MessageListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1501
    :cond_6
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 1502
    iput v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    .line 1503
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_5

    .line 1504
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v6}, Landroid/view/ActionMode;->finish()V

    .line 1505
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionMode:Landroid/view/ActionMode;

    goto :goto_4
.end method

.method private setWindowProgress()V
    .locals 5

    .prologue
    const/16 v4, 0x2710

    .line 300
    const/16 v1, 0x2710

    .line 302
    .local v1, "level":I
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-boolean v2, v2, Lcom/fsck/k9/activity/FolderInfoHolder;->loading:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/ActivityListener;->getFolderTotal()I

    move-result v2

    if-lez v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/ActivityListener;->getFolderTotal()I

    move-result v0

    .line 304
    .local v0, "divisor":I
    if-eqz v0, :cond_0

    .line 305
    div-int v2, v4, v0

    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v3}, Lcom/fsck/k9/activity/ActivityListener;->getFolderCompleted()I

    move-result v3

    mul-int v1, v2, v3

    .line 306
    if-le v1, v4, :cond_0

    .line 307
    const/16 v1, 0x2710

    .line 312
    .end local v0    # "divisor":I
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v2, v1}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->setMessageListProgress(I)V

    .line 313
    return-void
.end method

.method private setWindowTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isManualSearch()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleFolderMode:Z

    if-eqz v3, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 319
    .local v0, "activity":Landroid/app/Activity;
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/fsck/k9/activity/FolderInfoHolder;->getDisplayName(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "displayName":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v3, v1}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->setMessageListTitle(Ljava/lang/String;)V

    .line 324
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v3, v0}, Lcom/fsck/k9/activity/ActivityListener;->getOperation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "operation":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 326
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->setMessageListSubTitle(Ljava/lang/String;)V

    .line 344
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "operation":Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->unreadMessageCount:I

    if-gtz v3, :cond_3

    .line 345
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v3, v5}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->setUnreadCount(I)V

    .line 355
    :goto_1
    return-void

    .line 328
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "displayName":Ljava/lang/String;
    .restart local v2    # "operation":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v3, v2}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->setMessageListSubTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "operation":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->title:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 334
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->title:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->setMessageListTitle(Ljava/lang/String;)V

    .line 340
    :goto_2
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->setMessageListSubTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    const v4, 0x7f070339

    invoke-virtual {p0, v4}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->setMessageListTitle(Ljava/lang/String;)V

    goto :goto_2

    .line 347
    :cond_3
    iget-boolean v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleFolderMode:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->title:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 350
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v3, v5}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->setUnreadCount(I)V

    goto :goto_1

    .line 352
    :cond_4
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    iget v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->unreadMessageCount:I

    invoke-interface {v3, v4}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->setUnreadCount(I)V

    goto :goto_1
.end method

.method private showDialog(I)V
    .locals 11
    .param p1, "dialogId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 972
    packed-switch p1, :pswitch_data_0

    .line 1013
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Called showDialog(int) with unknown dialog id."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 974
    :pswitch_0
    const v6, 0x7f0701ab

    invoke-virtual {p0, v6}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 976
    .local v5, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessages:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 977
    .local v4, "selectionSize":I
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060002

    new-array v8, v8, [Ljava/lang/Object;

    .line 978
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    .line 977
    invoke-virtual {v6, v7, v4, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 980
    .local v3, "message":Ljava/lang/String;
    const v6, 0x7f0701aa

    invoke-virtual {p0, v6}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 981
    .local v1, "confirmText":Ljava/lang/String;
    const v6, 0x7f0701a9

    invoke-virtual {p0, v6}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, "cancelText":Ljava/lang/String;
    invoke-static {p1, v5, v3, v1, v0}, Lcom/fsck/k9/fragment/ConfirmationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    move-result-object v2

    .line 1017
    .end local v4    # "selectionSize":I
    .local v2, "fragment":Landroid/app/DialogFragment;
    :goto_0
    invoke-virtual {v2, p0, p1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1018
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->getDialogTag(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1019
    return-void

    .line 988
    .end local v0    # "cancelText":Ljava/lang/String;
    .end local v1    # "confirmText":Ljava/lang/String;
    .end local v2    # "fragment":Landroid/app/DialogFragment;
    .end local v3    # "message":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :pswitch_1
    const v6, 0x7f0701a4

    invoke-virtual {p0, v6}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 990
    .restart local v5    # "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessages:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 991
    .restart local v4    # "selectionSize":I
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060001

    new-array v8, v8, [Ljava/lang/Object;

    .line 993
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    .line 991
    invoke-virtual {v6, v7, v4, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 995
    .restart local v3    # "message":Ljava/lang/String;
    const v6, 0x7f0701a2

    invoke-virtual {p0, v6}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 996
    .restart local v1    # "confirmText":Ljava/lang/String;
    const v6, 0x7f0701a1

    invoke-virtual {p0, v6}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 998
    .restart local v0    # "cancelText":Ljava/lang/String;
    invoke-static {p1, v5, v3, v1, v0}, Lcom/fsck/k9/fragment/ConfirmationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    move-result-object v2

    .line 1000
    .restart local v2    # "fragment":Landroid/app/DialogFragment;
    goto :goto_0

    .line 1003
    .end local v0    # "cancelText":Ljava/lang/String;
    .end local v1    # "confirmText":Ljava/lang/String;
    .end local v2    # "fragment":Landroid/app/DialogFragment;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "selectionSize":I
    .end local v5    # "title":Ljava/lang/String;
    :pswitch_2
    const v6, 0x7f0701a8

    invoke-virtual {p0, v6}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1004
    .restart local v5    # "title":Ljava/lang/String;
    const v6, 0x7f0701a7

    invoke-virtual {p0, v6}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1006
    .restart local v3    # "message":Ljava/lang/String;
    const v6, 0x7f0701a6

    invoke-virtual {p0, v6}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1007
    .restart local v1    # "confirmText":Ljava/lang/String;
    const v6, 0x7f0701a5

    invoke-virtual {p0, v6}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1009
    .restart local v0    # "cancelText":Ljava/lang/String;
    invoke-static {p1, v5, v3, v1, v0}, Lcom/fsck/k9/fragment/ConfirmationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    move-result-object v2

    .line 1010
    .restart local v2    # "fragment":Landroid/app/DialogFragment;
    goto :goto_0

    .line 972
    :pswitch_data_0
    .packed-switch 0x7f0c0002
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private startAndPrepareActionMode()V
    .locals 2

    .prologue
    .line 2808
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionModeCallback:Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionMode:Landroid/view/ActionMode;

    .line 2809
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 2810
    return-void
.end method

.method private toggleMessageSelect(I)V
    .locals 2
    .param p1, "listViewPosition"    # I

    .prologue
    .line 1513
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->listViewToAdapterPosition(I)I

    move-result v0

    .line 1514
    .local v0, "adapterPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1519
    :goto_0
    return-void

    .line 1518
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->toggleMessageSelectWithAdapterPosition(I)V

    goto :goto_0
.end method

.method private updateActionModeTitle()V
    .locals 5

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionMode:Landroid/view/ActionMode;

    const v1, 0x7f07012d

    invoke-virtual {p0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 1573
    return-void
.end method

.method private updateContextMenu(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v6, 0x0

    .line 2754
    iget-wide v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->contextMenuUniqueId:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 2770
    :cond_0
    :goto_0
    return-void

    .line 2758
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2759
    iget v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->uniqueIdColumn:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2760
    .local v2, "uniqueId":J
    iget-wide v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->contextMenuUniqueId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 2758
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 2765
    .end local v2    # "uniqueId":J
    :cond_2
    iput-wide v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->contextMenuUniqueId:J

    .line 2766
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2767
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 2768
    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    goto :goto_0
.end method

.method private updateFooterView()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1423
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v1}, Lcom/fsck/k9/search/LocalSearch;->isManualSearch()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    if-eqz v1, :cond_4

    .line 1424
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-boolean v1, v1, Lcom/fsck/k9/activity/FolderInfoHolder;->loading:Z

    if-eqz v1, :cond_0

    .line 1425
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->context:Landroid/content/Context;

    const v2, 0x7f070398

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->updateFooter(Ljava/lang/String;)V

    .line 1445
    :goto_0
    return-void

    .line 1426
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-boolean v1, v1, Lcom/fsck/k9/activity/FolderInfoHolder;->moreMessages:Z

    if-nez v1, :cond_1

    .line 1427
    invoke-virtual {p0, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->updateFooter(Ljava/lang/String;)V

    goto :goto_0

    .line 1430
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-boolean v1, v1, Lcom/fsck/k9/activity/FolderInfoHolder;->lastCheckFailed:Z

    if-nez v1, :cond_3

    .line 1431
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1432
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->context:Landroid/content/Context;

    const v2, 0x7f0702a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1440
    .local v0, "message":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->updateFooter(Ljava/lang/String;)V

    goto :goto_0

    .line 1434
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->context:Landroid/content/Context;

    const v2, 0x7f070279

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    .line 1435
    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1434
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_1

    .line 1438
    .end local v0    # "message":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->context:Landroid/content/Context;

    const v2, 0x7f070399

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_1

    .line 1443
    .end local v0    # "message":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->updateFooter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateMoreMessagesOfCurrentFolder()V
    .locals 4

    .prologue
    .line 2726
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2728
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    invoke-static {v2, v3}, Lcom/fsck/k9/fragment/MlfUtils;->getOpenFolder(Ljava/lang/String;Lcom/fsck/k9/Account;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v1

    .line 2729
    .local v1, "folder":Lcom/fsck/k9/mailstore/LocalFolder;
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    invoke-virtual {v2, v1}, Lcom/fsck/k9/activity/FolderInfoHolder;->setMoreMessagesFromFolder(Lcom/fsck/k9/mailstore/LocalFolder;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2734
    .end local v1    # "folder":Lcom/fsck/k9/mailstore/LocalFolder;
    :cond_0
    return-void

    .line 2730
    :catch_0
    move-exception v0

    .line 2731
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public changeSort(Lcom/fsck/k9/Account$SortType;)V
    .locals 2
    .param p1, "sortType"    # Lcom/fsck/k9/Account$SortType;

    .prologue
    .line 796
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    if-ne v1, p1, :cond_1

    iget-boolean v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortAscending:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 797
    .local v0, "sortAscending":Ljava/lang/Boolean;
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;Ljava/lang/Boolean;)V

    .line 798
    return-void

    .line 796
    .end local v0    # "sortAscending":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public checkMail()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2224
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isSingleAccountMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isSingleFolderMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2225
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/fsck/k9/controller/MessagingController;->synchronizeMailbox(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/mail/Folder;)V

    .line 2226
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v0, v1, v3}, Lcom/fsck/k9/controller/MessagingController;->sendPendingMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 2235
    :cond_0
    :goto_0
    return-void

    .line 2227
    :cond_1
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->allAccounts:Z

    if-eqz v0, :cond_2

    .line 2228
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->checkMail(Landroid/content/Context;Lcom/fsck/k9/Account;ZZLcom/fsck/k9/controller/MessagingListener;)V

    goto :goto_0

    .line 2230
    :cond_2
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->accountUuids:[Ljava/lang/String;

    array-length v9, v8

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v9, :cond_0

    aget-object v6, v8, v7

    .line 2231
    .local v6, "accountUuid":Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->preferences:Lcom/fsck/k9/Preferences;

    invoke-virtual {v0, v6}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v2

    .line 2232
    .local v2, "account":Lcom/fsck/k9/Account;
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->checkMail(Landroid/content/Context;Lcom/fsck/k9/Account;ZZLcom/fsck/k9/controller/MessagingListener;)V

    .line 2230
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1
.end method

.method public confirmMarkAllAsRead()V
    .locals 1

    .prologue
    .line 2895
    invoke-static {}, Lcom/fsck/k9/K9;->confirmMarkAllRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2896
    const v0, 0x7f0c0003

    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->showDialog(I)V

    .line 2900
    :goto_0
    return-void

    .line 2898
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->markAllAsRead()V

    goto :goto_0
.end method

.method public dialogCancelled(I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    .line 2220
    invoke-virtual {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->doNegativeClick(I)V

    .line 2221
    return-void
.end method

.method public doNegativeClick(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 2208
    packed-switch p1, :pswitch_data_0

    .line 2216
    :goto_0
    :pswitch_0
    return-void

    .line 2212
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessages:Ljava/util/List;

    goto :goto_0

    .line 2208
    :pswitch_data_0
    .packed-switch 0x7f0c0002
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public doPositiveClick(I)V
    .locals 2
    .param p1, "dialogId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2187
    packed-switch p1, :pswitch_data_0

    .line 2204
    :goto_0
    return-void

    .line 2189
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessages:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->onSpamConfirmed(Ljava/util/List;)V

    .line 2191
    iput-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessages:Ljava/util/List;

    goto :goto_0

    .line 2195
    :pswitch_1
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessages:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->onDeleteConfirmed(Ljava/util/List;)V

    .line 2196
    iput-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessage:Lcom/fsck/k9/activity/MessageReference;

    goto :goto_0

    .line 2200
    :pswitch_2
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->markAllAsRead()V

    goto :goto_0

    .line 2187
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0002
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method folderLoading(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "loading"    # Z

    .prologue
    .line 281
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    iput-boolean p2, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->loading:Z

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->updateMoreMessagesOfCurrentFolder()V

    .line 285
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->updateFooterView()V

    .line 286
    return-void
.end method

.method getAccountFromCursor(Landroid/database/Cursor;)Lcom/fsck/k9/Account;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2845
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2846
    .local v0, "accountUuid":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->preferences:Lcom/fsck/k9/Preferences;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v1

    return-object v1
.end method

.method getK9LayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->layoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public isAccountExpungeCapable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2524
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Store;->isExpungeCapable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 2526
    :cond_0
    :goto_0
    return v1

    .line 2525
    :catch_0
    move-exception v0

    .line 2526
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isCheckMailSupported()Z
    .locals 1

    .prologue
    .line 2909
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->allAccounts:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isSingleAccountMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isSingleFolderMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2910
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isRemoteFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2909
    :goto_0
    return v0

    .line 2910
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirst(Lcom/fsck/k9/activity/MessageReference;)Z
    .locals 2
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    const/4 v0, 0x0

    .line 2321
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v1}, Lcom/fsck/k9/fragment/MessageListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->getReferenceForPosition(I)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/fsck/k9/activity/MessageReference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2887
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->initialized:Z

    return v0
.end method

.method public isLast(Lcom/fsck/k9/activity/MessageReference;)Z
    .locals 1
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v0}, Lcom/fsck/k9/fragment/MessageListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v0}, Lcom/fsck/k9/fragment/MessageListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->getReferenceForPosition(I)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/activity/MessageReference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadFinished()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2737
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->cursorValid:[Z

    if-nez v2, :cond_1

    .line 2747
    :cond_0
    :goto_0
    return v1

    .line 2741
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->cursorValid:[Z

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-boolean v0, v3, v2

    .line 2742
    .local v0, "cursorValid":Z
    if-eqz v0, :cond_0

    .line 2741
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2747
    .end local v0    # "cursorValid":Z
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isManualSearch()Z
    .locals 1

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v0}, Lcom/fsck/k9/search/LocalSearch;->isManualSearch()Z

    move-result v0

    return v0
.end method

.method public isMarkAllAsReadSupported()Z
    .locals 1

    .prologue
    .line 2891
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isSingleAccountMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isSingleFolderMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutbox()Z
    .locals 2

    .prologue
    .line 2502
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemoteFolder()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2506
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v2}, Lcom/fsck/k9/search/LocalSearch;->isManualSearch()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isOutbox()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 2515
    :cond_1
    :goto_0
    return v0

    .line 2510
    :cond_2
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lcom/fsck/k9/Account;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2512
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isRemoteSearch()Z
    .locals 1

    .prologue
    .line 2541
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->remoteSearchPerformed:Z

    return v0
.end method

.method public isRemoteSearchAllowed()Z
    .locals 3

    .prologue
    .line 2545
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v2}, Lcom/fsck/k9/search/LocalSearch;->isManualSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->remoteSearchPerformed:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleFolderMode:Z

    if-nez v2, :cond_2

    .line 2546
    :cond_0
    const/4 v0, 0x0

    .line 2555
    :cond_1
    :goto_0
    return v0

    .line 2549
    :cond_2
    const/4 v0, 0x0

    .line 2550
    .local v0, "allowRemoteSearch":Z
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    .line 2551
    .local v1, "searchAccount":Lcom/fsck/k9/Account;
    if-eqz v1, :cond_1

    .line 2552
    invoke-virtual {v1}, Lcom/fsck/k9/Account;->allowRemoteSearch()Z

    move-result v0

    goto :goto_0
.end method

.method public isSingleAccountMode()Z
    .locals 1

    .prologue
    .line 2879
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleAccountMode:Z

    return v0
.end method

.method public isSingleFolderMode()Z
    .locals 1

    .prologue
    .line 2883
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleFolderMode:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 479
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 481
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/helper/MessageHelper;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/MessageHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messageHelper:Lcom/fsck/k9/helper/MessageHelper;

    .line 483
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->initializeMessageList()V

    .line 486
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->initializeSortSettings()V

    .line 488
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->loaderJustInitialized:Z

    .line 489
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    .line 490
    .local v2, "loaderManager":Landroid/app/LoaderManager;
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->accountUuids:[Ljava/lang/String;

    array-length v1, v3

    .line 491
    .local v1, "len":I
    new-array v3, v1, [Landroid/database/Cursor;

    iput-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->cursors:[Landroid/database/Cursor;

    .line 492
    new-array v3, v1, [Z

    iput-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->cursorValid:[Z

    .line 493
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 494
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 495
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->cursorValid:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v0

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 923
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 930
    :pswitch_0
    if-eqz p3, :cond_0

    .line 934
    const-string v2, "com.fsck.k9.ChooseFolder_newfolder"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, "destFolderName":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessages:Ljava/util/List;

    .line 937
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    if-eqz v0, :cond_0

    .line 939
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessages:Ljava/util/List;

    .line 941
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 942
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->preferences:Lcom/fsck/k9/Preferences;

    invoke-static {v2, v1, v0}, Lcom/fsck/k9/fragment/MlfUtils;->setLastSelectedFolderName(Lcom/fsck/k9/Preferences;Ljava/util/List;Ljava/lang/String;)V

    .line 945
    :cond_2
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 947
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->move(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 951
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->copy(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 927
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 945
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onArchive()V
    .locals 1

    .prologue
    .line 2488
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getSelectedMessage()Lcom/fsck/k9/activity/MessageReference;

    move-result-object v0

    .line 2489
    .local v0, "message":Lcom/fsck/k9/activity/MessageReference;
    if-eqz v0, :cond_0

    .line 2490
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->onArchive(Lcom/fsck/k9/activity/MessageReference;)V

    .line 2492
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 418
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 420
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->context:Landroid/content/Context;

    .line 423
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    return-void

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement MessageListFragmentListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCompose()V
    .locals 2

    .prologue
    .line 768
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleAccountMode:Z

    if-nez v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->onCompose(Lcom/fsck/k9/Account;)V

    .line 777
    :goto_0
    return-void

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    invoke-interface {v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->onCompose(Lcom/fsck/k9/Account;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1092
    iget-wide v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->contextMenuUniqueId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1180
    :cond_0
    :goto_0
    return v4

    .line 1096
    :cond_1
    iget-wide v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->contextMenuUniqueId:J

    invoke-direct {p0, v6, v7}, Lcom/fsck/k9/fragment/MessageListFragment;->getPositionForUniqueId(J)I

    move-result v0

    .line 1097
    .local v0, "adapterPosition":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    .line 1101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1179
    :cond_2
    :goto_1
    :pswitch_0
    iput-wide v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->contextMenuUniqueId:J

    move v4, v5

    .line 1180
    goto :goto_0

    .line 1104
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->toggleMessageSelectWithAdapterPosition(I)V

    goto :goto_1

    .line 1108
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->getMessageAtPosition(I)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/fsck/k9/fragment/MessageListFragment;->onReply(Lcom/fsck/k9/activity/MessageReference;)V

    goto :goto_1

    .line 1112
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->getMessageAtPosition(I)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/fsck/k9/fragment/MessageListFragment;->onReplyAll(Lcom/fsck/k9/activity/MessageReference;)V

    goto :goto_1

    .line 1116
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->getMessageAtPosition(I)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/fsck/k9/fragment/MessageListFragment;->onForward(Lcom/fsck/k9/activity/MessageReference;)V

    goto :goto_1

    .line 1120
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->getMessageAtPosition(I)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/fsck/k9/fragment/MessageListFragment;->onResendMessage(Lcom/fsck/k9/activity/MessageReference;)V

    .line 1121
    iput v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    goto :goto_1

    .line 1125
    :pswitch_6
    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v4, v0}, Lcom/fsck/k9/fragment/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 1126
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-static {v1}, Lcom/fsck/k9/fragment/MlfUtils;->getSenderAddressFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 1127
    .local v3, "senderAddress":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1128
    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v4, v3}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->showMoreFromSameSender(Ljava/lang/String;)V

    goto :goto_1

    .line 1133
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "senderAddress":Ljava/lang/String;
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->getMessageAtPosition(I)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v2

    .line 1134
    .local v2, "message":Lcom/fsck/k9/activity/MessageReference;
    invoke-direct {p0, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->onDelete(Lcom/fsck/k9/activity/MessageReference;)V

    goto :goto_1

    .line 1138
    .end local v2    # "message":Lcom/fsck/k9/activity/MessageReference;
    :pswitch_8
    sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-direct {p0, v0, v4, v5}, Lcom/fsck/k9/fragment/MessageListFragment;->setFlag(ILcom/fsck/k9/mail/Flag;Z)V

    goto :goto_1

    .line 1142
    :pswitch_9
    sget-object v6, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-direct {p0, v0, v6, v4}, Lcom/fsck/k9/fragment/MessageListFragment;->setFlag(ILcom/fsck/k9/mail/Flag;Z)V

    goto :goto_1

    .line 1146
    :pswitch_a
    sget-object v4, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-direct {p0, v0, v4, v5}, Lcom/fsck/k9/fragment/MessageListFragment;->setFlag(ILcom/fsck/k9/mail/Flag;Z)V

    goto :goto_1

    .line 1150
    :pswitch_b
    sget-object v6, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-direct {p0, v0, v6, v4}, Lcom/fsck/k9/fragment/MessageListFragment;->setFlag(ILcom/fsck/k9/mail/Flag;Z)V

    goto :goto_1

    .line 1156
    :pswitch_c
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->getMessageAtPosition(I)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/fsck/k9/fragment/MessageListFragment;->onArchive(Lcom/fsck/k9/activity/MessageReference;)V

    goto :goto_1

    .line 1160
    :pswitch_d
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->getMessageAtPosition(I)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/fsck/k9/fragment/MessageListFragment;->onSpam(Lcom/fsck/k9/activity/MessageReference;)V

    goto :goto_1

    .line 1164
    :pswitch_e
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->getMessageAtPosition(I)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/fsck/k9/fragment/MessageListFragment;->onMove(Lcom/fsck/k9/activity/MessageReference;)V

    goto :goto_1

    .line 1168
    :pswitch_f
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->getMessageAtPosition(I)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/fsck/k9/fragment/MessageListFragment;->onCopy(Lcom/fsck/k9/activity/MessageReference;)V

    goto :goto_1

    .line 1174
    :pswitch_10
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->getMessageAtPosition(I)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/fsck/k9/fragment/MessageListFragment;->onDebugClearLocally(Lcom/fsck/k9/activity/MessageReference;)V

    goto/16 :goto_1

    .line 1101
    :pswitch_data_0
    .packed-switch 0x7f0c013e
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method

.method public onCopy()V
    .locals 1

    .prologue
    .line 2495
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getSelectedMessage()Lcom/fsck/k9/activity/MessageReference;

    move-result-object v0

    .line 2496
    .local v0, "message":Lcom/fsck/k9/activity/MessageReference;
    if-eqz v0, :cond_0

    .line 2497
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->onCopy(Lcom/fsck/k9/activity/MessageReference;)V

    .line 2499
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 434
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 436
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->preferences:Lcom/fsck/k9/Preferences;

    .line 437
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 439
    invoke-static {}, Lcom/fsck/k9/K9;->messageListPreviewLines()I

    move-result v1

    iput v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->previewLines:I

    .line 440
    invoke-static {}, Lcom/fsck/k9/K9;->messageListCheckboxes()Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->checkboxes:Z

    .line 441
    invoke-static {}, Lcom/fsck/k9/K9;->messageListStars()Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->stars:Z

    .line 443
    invoke-static {}, Lcom/fsck/k9/K9;->showContactPicture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/helper/ContactPicture;->getContactPictureLoader(Landroid/content/Context;)Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->contactsPictureLoader:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    .line 447
    :cond_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 448
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->decodeArguments()V

    .line 450
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->createCacheBroadcastReceiver(Landroid/content/Context;)V

    .line 452
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->initialized:Z

    .line 453
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const v11, 0x7f0c0146

    const v10, 0x7f0c0141

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1185
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v3, p3

    .line 1187
    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1188
    .local v3, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    iget v9, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 1190
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v8

    const v9, 0x7f0d000a

    invoke-virtual {v8, v9, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1195
    const v8, 0x7f0c014f

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1197
    iget v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->uniqueIdColumn:I

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->contextMenuUniqueId:J

    .line 1198
    invoke-virtual {p0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->getAccountFromCursor(Landroid/database/Cursor;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 1200
    .local v0, "account":Lcom/fsck/k9/Account;
    const/4 v8, 0x3

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1201
    .local v5, "subject":Ljava/lang/String;
    const/16 v8, 0x8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v6, :cond_5

    move v4, v6

    .line 1202
    .local v4, "read":Z
    :goto_1
    const/16 v8, 0x9

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v6, :cond_6

    move v2, v6

    .line 1204
    .local v2, "flagged":Z
    :goto_2
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1206
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    iget-wide v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->contextMenuUniqueId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1207
    const v6, 0x7f0c0148

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1212
    :goto_3
    if-eqz v4, :cond_8

    .line 1213
    const v6, 0x7f0c013f

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1218
    :goto_4
    if-eqz v2, :cond_9

    .line 1219
    const v6, 0x7f0c0144

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1224
    :goto_5
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v6, v0}, Lcom/fsck/k9/controller/MessagingController;->isCopyCapable(Lcom/fsck/k9/Account;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1225
    const v6, 0x7f0c0143

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1228
    :cond_2
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v6, v0}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lcom/fsck/k9/Account;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1229
    const v6, 0x7f0c0142

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1230
    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1231
    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1234
    :cond_3
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->hasArchiveFolder()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1235
    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1238
    :cond_4
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->hasSpamFolder()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1239
    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .end local v2    # "flagged":Z
    .end local v4    # "read":Z
    :cond_5
    move v4, v7

    .line 1201
    goto/16 :goto_1

    .restart local v4    # "read":Z
    :cond_6
    move v2, v7

    .line 1202
    goto/16 :goto_2

    .line 1209
    .restart local v2    # "flagged":Z
    :cond_7
    const v6, 0x7f0c0149

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 1215
    :cond_8
    const v6, 0x7f0c0140

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 1221
    :cond_9
    const v6, 0x7f0c0145

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 15
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2565
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->accountUuids:[Ljava/lang/String;

    aget-object v8, v0, p1

    .line 2566
    .local v8, "accountUuid":Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->preferences:Lcom/fsck/k9/Preferences;

    invoke-virtual {v0, v8}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v7

    .line 2568
    .local v7, "account":Lcom/fsck/k9/Account;
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->getThreadId(Lcom/fsck/k9/search/LocalSearch;)Ljava/lang/String;

    move-result-object v13

    .line 2573
    .local v13, "threadId":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 2574
    sget-object v0, Lcom/fsck/k9/provider/EmailProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "account/"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "/thread/"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2575
    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Lcom/fsck/k9/fragment/MLFProjectionInfo;->PROJECTION:[Ljava/lang/String;

    .line 2576
    .local v3, "projection":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 2587
    .local v9, "needConditions":Z
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2588
    .local v10, "query":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2589
    .local v11, "queryArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_1

    .line 2590
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessage:Lcom/fsck/k9/activity/MessageReference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessage:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v12, 0x1

    .line 2592
    .local v12, "selectActive":Z
    :goto_1
    if-eqz v12, :cond_0

    .line 2593
    const-string v0, "(uid = ? AND name = ?) OR ("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2594
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessage:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageReference;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2595
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessage:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2598
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v0}, Lcom/fsck/k9/search/LocalSearch;->getConditions()Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v0

    invoke-static {v7, v0, v10, v11}, Lcom/fsck/k9/search/SqlQueryBuilder;->buildWhereClause(Lcom/fsck/k9/Account;Lcom/fsck/k9/search/ConditionsTreeNode;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 2600
    if-eqz v12, :cond_1

    .line 2601
    const/16 v0, 0x29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2605
    .end local v12    # "selectActive":Z
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2606
    .local v4, "selection":Ljava/lang/String;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 2608
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->buildSortOrder()Ljava/lang/String;

    move-result-object v6

    .line 2610
    .local v6, "sortOrder":Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2577
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "sortOrder":Ljava/lang/String;
    .end local v9    # "needConditions":Z
    .end local v10    # "query":Ljava/lang/StringBuilder;
    .end local v11    # "queryArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->showingThreadedList:Z

    if-eqz v0, :cond_3

    .line 2578
    sget-object v0, Lcom/fsck/k9/provider/EmailProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "account/"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "/messages/threaded"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2579
    .restart local v2    # "uri":Landroid/net/Uri;
    sget-object v3, Lcom/fsck/k9/fragment/MLFProjectionInfo;->THREADED_PROJECTION:[Ljava/lang/String;

    .line 2580
    .restart local v3    # "projection":[Ljava/lang/String;
    const/4 v9, 0x1

    .restart local v9    # "needConditions":Z
    goto/16 :goto_0

    .line 2582
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v9    # "needConditions":Z
    :cond_3
    sget-object v0, Lcom/fsck/k9/provider/EmailProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "account/"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "/messages"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2583
    .restart local v2    # "uri":Landroid/net/Uri;
    sget-object v3, Lcom/fsck/k9/fragment/MLFProjectionInfo;->PROJECTION:[Ljava/lang/String;

    .line 2584
    .restart local v3    # "projection":[Ljava/lang/String;
    const/4 v9, 0x1

    .restart local v9    # "needConditions":Z
    goto/16 :goto_0

    .line 2590
    .restart local v10    # "query":Ljava/lang/StringBuilder;
    .restart local v11    # "queryArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 459
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->layoutInflater:Landroid/view/LayoutInflater;

    .line 461
    const v1, 0x7f03002b

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 463
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->initializePullToRefresh(Landroid/view/View;)V

    .line 465
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->initializeLayout()V

    .line 466
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 468
    return-object v0
.end method

.method public onCycleSort()V
    .locals 5

    .prologue
    .line 880
    invoke-static {}, Lcom/fsck/k9/Account$SortType;->values()[Lcom/fsck/k9/Account$SortType;

    move-result-object v2

    .line 881
    .local v2, "sorts":[Lcom/fsck/k9/Account$SortType;
    const/4 v0, 0x0

    .line 883
    .local v0, "curIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 884
    aget-object v3, v2, v1

    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    if-ne v3, v4, :cond_2

    .line 885
    move v0, v1

    .line 890
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 892
    array-length v3, v2

    if-ne v0, v3, :cond_1

    .line 893
    const/4 v0, 0x0

    .line 896
    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;)V

    .line 897
    return-void

    .line 883
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 2451
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getSelectedMessage()Lcom/fsck/k9/activity/MessageReference;

    move-result-object v0

    .line 2452
    .local v0, "message":Lcom/fsck/k9/activity/MessageReference;
    if-eqz v0, :cond_0

    .line 2453
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->onDelete(Ljava/util/List;)V

    .line 2455
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->savedListState:Landroid/os/Parcelable;

    .line 474
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 475
    return-void
.end method

.method public onExpunge()V
    .locals 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->onExpunge(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 964
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->footerView:Landroid/view/View;

    if-ne p2, v8, :cond_3

    .line 367
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v8}, Lcom/fsck/k9/search/LocalSearch;->isManualSearch()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-boolean v8, v8, Lcom/fsck/k9/activity/FolderInfoHolder;->moreMessages:Z

    if-eqz v8, :cond_1

    .line 369
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v9, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    iget-object v10, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/fsck/k9/controller/MessagingController;->loadMoreMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isRemoteSearch()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->extraSearchResults:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->extraSearchResults:Ljava/util/List;

    .line 372
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 374
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->extraSearchResults:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 375
    .local v4, "numResults":I
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getRemoteSearchNumResults()I

    move-result v3

    .line 377
    .local v3, "limit":I
    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->extraSearchResults:Ljava/util/List;

    .line 379
    .local v5, "toProcess":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    if-lez v3, :cond_2

    if-le v4, v3, :cond_2

    .line 380
    const/4 v8, 0x0

    invoke-interface {v5, v8, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 381
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->extraSearchResults:Ljava/util/List;

    iget-object v9, p0, Lcom/fsck/k9/fragment/MessageListFragment;->extraSearchResults:Ljava/util/List;

    .line 382
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 381
    invoke-interface {v8, v3, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->extraSearchResults:Ljava/util/List;

    .line 388
    :goto_1
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v9, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    iget-object v10, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-object v10, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    iget-object v11, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v8, v9, v10, v5, v11}, Lcom/fsck/k9/controller/MessagingController;->loadSearchResults(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/controller/MessagingListener;)V

    goto :goto_0

    .line 384
    :cond_2
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->extraSearchResults:Ljava/util/List;

    .line 385
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/fsck/k9/fragment/MessageListFragment;->updateFooter(Ljava/lang/String;)V

    goto :goto_1

    .line 394
    .end local v3    # "limit":I
    .end local v4    # "numResults":I
    .end local v5    # "toProcess":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :cond_3
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 395
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 399
    iget v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    if-lez v8, :cond_4

    .line 400
    invoke-direct {p0, p3}, Lcom/fsck/k9/fragment/MessageListFragment;->toggleMessageSelect(I)V

    goto :goto_0

    .line 402
    :cond_4
    iget-boolean v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->showingThreadedList:Z

    if-eqz v8, :cond_5

    const/16 v8, 0x13

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    .line 403
    invoke-virtual {p0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->getAccountFromCursor(Landroid/database/Cursor;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 404
    .local v0, "account":Lcom/fsck/k9/Account;
    const/16 v8, 0x12

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "folderName":Ljava/lang/String;
    const/16 v8, 0x10

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 408
    .local v6, "rootId":J
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v8, v0, v2, v6, v7}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->showThread(Lcom/fsck/k9/Account;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 411
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v2    # "folderName":Ljava/lang/String;
    .end local v6    # "rootId":J
    :cond_5
    invoke-direct {p0, p3}, Lcom/fsck/k9/fragment/MessageListFragment;->listViewToAdapterPosition(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/fsck/k9/fragment/MessageListFragment;->openMessageAtPosition(I)V

    goto/16 :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 6
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2672
    iget-boolean v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->isThreadDisplay:Z

    if-eqz v2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2673
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->handler:Lcom/fsck/k9/fragment/MessageListHandler;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListHandler;->goBack()V

    .line 2723
    :cond_0
    :goto_0
    return-void

    .line 2677
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2678
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isPullToRefreshAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 2680
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 2681
    .local v1, "loaderId":I
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->cursors:[Landroid/database/Cursor;

    aput-object p2, v2, v1

    .line 2682
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->cursorValid:[Z

    aput-boolean v5, v2, v1

    .line 2685
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->cursors:[Landroid/database/Cursor;

    array-length v2, v2

    if-le v2, v5, :cond_6

    .line 2686
    new-instance v0, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;

    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->cursors:[Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;-><init>([Landroid/database/Cursor;Ljava/util/Comparator;)V

    .line 2687
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->uniqueIdColumn:I

    .line 2693
    :goto_1
    iget-boolean v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->isThreadDisplay:Z

    if-eqz v2, :cond_4

    .line 2694
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2695
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->title:Ljava/lang/String;

    .line 2696
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2697
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->title:Ljava/lang/String;

    invoke-static {v2}, Lcom/fsck/k9/helper/Utility;->stripSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->title:Ljava/lang/String;

    .line 2699
    :cond_2
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2700
    const v2, 0x7f07021b

    invoke-virtual {p0, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->title:Ljava/lang/String;

    .line 2702
    :cond_3
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->updateTitle()V

    .line 2708
    :cond_4
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->cleanupSelected(Landroid/database/Cursor;)V

    .line 2709
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->updateContextMenu(Landroid/database/Cursor;)V

    .line 2711
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v2, v0}, Lcom/fsck/k9/fragment/MessageListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2713
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->resetActionMode()V

    .line 2714
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->computeBatchDirection()V

    .line 2716
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isLoadFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2717
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->savedListState:Landroid/os/Parcelable;

    if-eqz v2, :cond_5

    .line 2718
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->handler:Lcom/fsck/k9/fragment/MessageListHandler;

    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListHandler;->restoreListPosition()V

    .line 2721
    :cond_5
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v2}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->updateMenu()V

    goto/16 :goto_0

    .line 2689
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_6
    move-object v0, p2

    .line 2690
    .restart local v0    # "cursor":Landroid/database/Cursor;
    iput v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->uniqueIdColumn:I

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/fragment/MessageListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2840
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2841
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2842
    return-void
.end method

.method public onMove()V
    .locals 1

    .prologue
    .line 2481
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getSelectedMessage()Lcom/fsck/k9/activity/MessageReference;

    move-result-object v0

    .line 2482
    .local v0, "message":Lcom/fsck/k9/activity/MessageReference;
    if-eqz v0, :cond_0

    .line 2483
    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->onMove(Lcom/fsck/k9/activity/MessageReference;)V

    .line 2485
    :cond_0
    return-void
.end method

.method public onMoveDown()V
    .locals 3

    .prologue
    .line 2290
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 2291
    .local v0, "currentPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2292
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2295
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2296
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 2298
    :cond_2
    return-void
.end method

.method public onMoveUp()V
    .locals 3

    .prologue
    .line 2280
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 2281
    .local v0, "currentPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2282
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2284
    :cond_1
    if-lez v0, :cond_2

    .line 2285
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 2287
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 1027
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1028
    .local v0, "itemId":I
    sparse-switch v0, :sswitch_data_0

    .line 1063
    iget-boolean v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->singleAccountMode:Z

    if-nez v2, :cond_1

    .line 1066
    const/4 v1, 0x0

    .line 1081
    :cond_0
    :goto_0
    return v1

    .line 1030
    :sswitch_0
    sget-object v2, Lcom/fsck/k9/Account$SortType;->SORT_DATE:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;)V

    goto :goto_0

    .line 1034
    :sswitch_1
    sget-object v2, Lcom/fsck/k9/Account$SortType;->SORT_ARRIVAL:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;)V

    goto :goto_0

    .line 1038
    :sswitch_2
    sget-object v2, Lcom/fsck/k9/Account$SortType;->SORT_SUBJECT:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;)V

    goto :goto_0

    .line 1042
    :sswitch_3
    sget-object v2, Lcom/fsck/k9/Account$SortType;->SORT_SENDER:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;)V

    goto :goto_0

    .line 1046
    :sswitch_4
    sget-object v2, Lcom/fsck/k9/Account$SortType;->SORT_FLAGGED:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;)V

    goto :goto_0

    .line 1050
    :sswitch_5
    sget-object v2, Lcom/fsck/k9/Account$SortType;->SORT_UNREAD:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;)V

    goto :goto_0

    .line 1054
    :sswitch_6
    sget-object v2, Lcom/fsck/k9/Account$SortType;->SORT_ATTACHMENT:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;)V

    goto :goto_0

    .line 1058
    :sswitch_7
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->selectAll()V

    goto :goto_0

    .line 1069
    :cond_1
    sparse-switch v0, :sswitch_data_1

    .line 1081
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 1071
    :sswitch_8
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->onSendPendingMessages()V

    goto :goto_0

    .line 1075
    :sswitch_9
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    if-eqz v2, :cond_0

    .line 1076
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-object v3, v3, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->onExpunge(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 1028
    :sswitch_data_0
    .sparse-switch
        0x7f0c0147 -> :sswitch_7
        0x7f0c015e -> :sswitch_0
        0x7f0c015f -> :sswitch_1
        0x7f0c0160 -> :sswitch_2
        0x7f0c0161 -> :sswitch_3
        0x7f0c0162 -> :sswitch_4
        0x7f0c0163 -> :sswitch_5
        0x7f0c0164 -> :sswitch_6
    .end sparse-switch

    .line 1069
    :sswitch_data_1
    .sparse-switch
        0x7f0c0127 -> :sswitch_8
        0x7f0c0166 -> :sswitch_9
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 662
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 664
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->cacheBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 665
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/ActivityListener;->onPause(Landroid/content/Context;)V

    .line 666
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->removeListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 667
    return-void
.end method

.method public onRemoteSearch()V
    .locals 3

    .prologue
    .line 2532
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->hasConnectivity:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2533
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->onRemoteSearchRequested()V

    .line 2538
    :goto_0
    return-void

    .line 2535
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f07032e

    invoke-virtual {p0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2536
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 676
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 678
    invoke-static {}, Lcom/fsck/k9/K9;->messageListSenderAboveSubject()Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->senderAboveSubject:Z

    .line 680
    iget-boolean v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->loaderJustInitialized:Z

    if-nez v3, :cond_1

    .line 681
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->restartLoader()V

    .line 687
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->hasConnectivity:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/helper/Utility;->hasConnectivity(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->hasConnectivity:Ljava/lang/Boolean;

    .line 691
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->cacheBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->cacheIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 692
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fsck/k9/activity/ActivityListener;->onResume(Landroid/content/Context;)V

    .line 693
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v3, v4}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 698
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    .line 699
    .local v0, "account":Lcom/fsck/k9/Account;
    if-eqz v0, :cond_2

    .line 700
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 705
    .local v2, "accountsWithNotification":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/Account;

    .line 706
    .local v1, "accountWithNotification":Lcom/fsck/k9/Account;
    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v4, v1}, Lcom/fsck/k9/controller/MessagingController;->cancelNotificationsForAccount(Lcom/fsck/k9/Account;)V

    goto :goto_2

    .line 683
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v1    # "accountWithNotification":Lcom/fsck/k9/Account;
    .end local v2    # "accountsWithNotification":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->loaderJustInitialized:Z

    goto :goto_0

    .line 702
    .restart local v0    # "account":Lcom/fsck/k9/Account;
    :cond_2
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->preferences:Lcom/fsck/k9/Preferences;

    invoke-virtual {v3}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v2

    .restart local v2    # "accountsWithNotification":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    goto :goto_1

    .line 709
    :cond_3
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v3}, Lcom/fsck/k9/search/LocalSearch;->isManualSearch()Z

    move-result v3

    if-nez v3, :cond_4

    .line 710
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->folderName:Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v3, v4, v5, v6}, Lcom/fsck/k9/controller/MessagingController;->getFolderUnreadMessageCount(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 713
    :cond_4
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->updateTitle()V

    .line 714
    return-void
.end method

.method public onReverseSort()V
    .locals 1

    .prologue
    .line 2393
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->sortType:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->changeSort(Lcom/fsck/k9/Account$SortType;)V

    .line 2394
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 501
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 503
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->saveSelectedMessages(Landroid/os/Bundle;)V

    .line 504
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->saveListState(Landroid/os/Bundle;)V

    .line 506
    const-string v0, "remoteSearchPerformed"

    iget-boolean v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->remoteSearchPerformed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 507
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessage:Lcom/fsck/k9/activity/MessageReference;

    if-eqz v0, :cond_0

    .line 508
    const-string v0, "activeMessage"

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessage:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageReference;->toIdentityString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    .line 2559
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-object v0, v1, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    .line 2560
    .local v0, "folderName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    invoke-interface {v1, v2, v0}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->startSearch(Lcom/fsck/k9/Account;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 2559
    .end local v0    # "folderName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSendPendingMessages()V
    .locals 3

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->sendPendingMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 1088
    return-void
.end method

.method public onStop()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2244
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isRemoteSearch()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->remoteSearchFuture:Ljava/util/concurrent/Future;

    if-eqz v4, :cond_1

    .line 2246
    :try_start_0
    const-string v4, "Remote search in progress, attempting to abort..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2248
    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->remoteSearchFuture:Ljava/util/concurrent/Future;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    .line 2249
    .local v0, "cancelSuccess":Z
    if-nez v0, :cond_0

    .line 2250
    const-string v4, "Could not cancel remote search future."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2253
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment;->account:Lcom/fsck/k9/Account;

    .line 2254
    .local v3, "searchAccount":Lcom/fsck/k9/Account;
    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-object v2, v4, Lcom/fsck/k9/activity/FolderInfoHolder;->folder:Lcom/fsck/k9/mail/Folder;

    .line 2255
    .local v2, "remoteFolder":Lcom/fsck/k9/mail/Folder;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->close()V

    .line 2257
    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activityListener:Lcom/fsck/k9/activity/ActivityListener;

    iget-object v5, p0, Lcom/fsck/k9/fragment/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-object v5, v5, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    const/4 v6, 0x0

    .line 2258
    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getRemoteSearchNumResults()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/fsck/k9/activity/ActivityListener;->remoteSearchFinished(Ljava/lang/String;IILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2266
    .end local v0    # "cancelSuccess":Z
    .end local v2    # "remoteFolder":Lcom/fsck/k9/mail/Folder;
    .end local v3    # "searchAccount":Lcom/fsck/k9/Account;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v4, :cond_2

    .line 2267
    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v4, v9}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2268
    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->destroyDrawingCache()V

    .line 2269
    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->clearAnimation()V

    .line 2272
    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2273
    return-void

    .line 2259
    :catch_0
    move-exception v1

    .line 2261
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Could not abort remote search before going back"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSwipeLeftToRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 1251
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->handleSwipe(Landroid/view/MotionEvent;Z)V

    .line 1252
    return-void
.end method

.method public onSwipeRightToLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 1246
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->handleSwipe(Landroid/view/MotionEvent;Z)V

    .line 1247
    return-void
.end method

.method public onToggleFlagged()V
    .locals 2

    .prologue
    .line 2462
    sget-object v0, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->onToggleFlag(Lcom/fsck/k9/mail/Flag;I)V

    .line 2463
    return-void
.end method

.method public onToggleRead()V
    .locals 2

    .prologue
    .line 2466
    sget-object v0, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->onToggleFlag(Lcom/fsck/k9/mail/Flag;I)V

    .line 2467
    return-void
.end method

.method public openNext(Lcom/fsck/k9/activity/MessageReference;)Z
    .locals 2
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 2311
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->getPosition(Lcom/fsck/k9/activity/MessageReference;)I

    move-result v0

    .line 2312
    .local v0, "position":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v1}, Lcom/fsck/k9/fragment/MessageListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2313
    :cond_0
    const/4 v1, 0x0

    .line 2317
    :goto_0
    return v1

    .line 2316
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->openMessageAtPosition(I)V

    .line 2317
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public openPrevious(Lcom/fsck/k9/activity/MessageReference;)Z
    .locals 2
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 2301
    invoke-direct {p0, p1}, Lcom/fsck/k9/fragment/MessageListFragment;->getPosition(Lcom/fsck/k9/activity/MessageReference;)I

    move-result v0

    .line 2302
    .local v0, "position":I
    if-gtz v0, :cond_0

    .line 2303
    const/4 v1, 0x0

    .line 2307
    :goto_0
    return v1

    .line 2306
    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->openMessageAtPosition(I)V

    .line 2307
    const/4 v1, 0x1

    goto :goto_0
.end method

.method progress(Z)V
    .locals 2
    .param p1, "progress"    # Z

    .prologue
    .line 358
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v0, p1}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->enableActionBarProgress(Z)V

    .line 359
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 362
    :cond_0
    return-void
.end method

.method remoteSearchFinished()V
    .locals 1

    .prologue
    .line 2850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->remoteSearchFuture:Ljava/util/concurrent/Future;

    .line 2851
    return-void
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 2276
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->setSelectionState(Z)V

    .line 2277
    return-void
.end method

.method public setActiveMessage(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 1
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 2865
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->activeMessage:Lcom/fsck/k9/activity/MessageReference;

    .line 2868
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2869
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->restartLoader()V

    .line 2873
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    if-eqz v0, :cond_1

    .line 2874
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v0}, Lcom/fsck/k9/fragment/MessageListAdapter;->notifyDataSetChanged()V

    .line 2876
    :cond_1
    return-void
.end method

.method toggleMessageFlagWithAdapterPosition(I)V
    .locals 5
    .param p1, "adapterPosition"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1522
    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v4, p1}, Lcom/fsck/k9/fragment/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1523
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v4, 0x9

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 1525
    .local v1, "flagged":Z
    :goto_0
    sget-object v4, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    if-nez v1, :cond_1

    :goto_1
    invoke-direct {p0, p1, v4, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->setFlag(ILcom/fsck/k9/mail/Flag;Z)V

    .line 1526
    return-void

    .end local v1    # "flagged":Z
    :cond_0
    move v1, v3

    .line 1523
    goto :goto_0

    .restart local v1    # "flagged":Z
    :cond_1
    move v2, v3

    .line 1525
    goto :goto_1
.end method

.method public toggleMessageSelect()V
    .locals 1

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->toggleMessageSelect(I)V

    .line 2459
    return-void
.end method

.method toggleMessageSelectWithAdapterPosition(I)V
    .locals 8
    .param p1, "adapterPosition"    # I

    .prologue
    .line 1529
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v6, p1}, Lcom/fsck/k9/fragment/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1530
    .local v0, "cursor":Landroid/database/Cursor;
    iget v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->uniqueIdColumn:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1532
    .local v4, "uniqueId":J
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1533
    .local v1, "selected":Z
    if-nez v1, :cond_1

    .line 1534
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1539
    :goto_0
    const/4 v2, 0x1

    .line 1540
    .local v2, "selectedCountDelta":I
    iget-boolean v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->showingThreadedList:Z

    if-eqz v6, :cond_0

    .line 1541
    const/16 v6, 0x13

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1542
    .local v3, "threadCount":I
    const/4 v6, 0x1

    if-le v3, v6, :cond_0

    .line 1543
    move v2, v3

    .line 1547
    .end local v3    # "threadCount":I
    :cond_0
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_2

    .line 1548
    iget v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    if-ne v6, v2, :cond_3

    if-eqz v1, :cond_3

    .line 1549
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v6}, Landroid/view/ActionMode;->finish()V

    .line 1550
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->actionMode:Landroid/view/ActionMode;

    .line 1569
    :goto_1
    return-void

    .line 1536
    .end local v2    # "selectedCountDelta":I
    :cond_1
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1554
    .restart local v2    # "selectedCountDelta":I
    :cond_2
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->startAndPrepareActionMode()V

    .line 1557
    :cond_3
    if-eqz v1, :cond_4

    .line 1558
    iget v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    sub-int/2addr v6, v2

    iput v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    .line 1563
    :goto_2
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->computeBatchDirection()V

    .line 1564
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->updateActionModeTitle()V

    .line 1566
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->computeSelectAllVisibility()V

    .line 1568
    iget-object v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->adapter:Lcom/fsck/k9/fragment/MessageListAdapter;

    invoke-virtual {v6}, Lcom/fsck/k9/fragment/MessageListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1560
    :cond_4
    iget v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/fsck/k9/fragment/MessageListFragment;->selectedCount:I

    goto :goto_2
.end method

.method public updateFooter(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1448
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->footerView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1460
    :goto_0
    return-void

    .line 1452
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment;->footerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/fragment/MessageListFragment$FooterViewHolder;

    .line 1454
    .local v0, "holder":Lcom/fsck/k9/fragment/MessageListFragment$FooterViewHolder;
    if-eqz p1, :cond_1

    .line 1455
    iget-object v1, v0, Lcom/fsck/k9/fragment/MessageListFragment$FooterViewHolder;->main:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1456
    iget-object v1, v0, Lcom/fsck/k9/fragment/MessageListFragment$FooterViewHolder;->main:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1458
    :cond_1
    iget-object v1, v0, Lcom/fsck/k9/fragment/MessageListFragment$FooterViewHolder;->main:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateTitle()V
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->initialized:Z

    if-nez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->setWindowTitle()V

    .line 294
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment;->search:Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v0}, Lcom/fsck/k9/search/LocalSearch;->isManualSearch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment;->setWindowProgress()V

    goto :goto_0
.end method
