.class public Lcom/iliakplv/notes/gui/main/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$NavigationDrawerListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ARG_DETAILS_SHOWN:Ljava/lang/String; = "details_fragment_shown"

.field private static final ARG_SEARCH_QUERY:Ljava/lang/String; = "search_query"

.field private static final ARG_SELECTED_LABEL_ID:Ljava/lang/String; = "selected_label_id"

.field public static final NEW_NOTE:Ljava/lang/Integer;

.field private static final PREFS_KEY_SHOW_ANNOUNCEMENT:Ljava/lang/String; = "announcement"

.field private static final PREFS_KEY_SORT_ORDER:Ljava/lang/String; = "sort_order"

.field private static final RESULT_SPEECH_TO_TEXT:I = 0x2a


# instance fields
.field private volatile detailsShown:Z

.field private firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private isDropboxLinked:Z

.field private navigationDrawerFragment:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

.field private searchQuery:Ljava/lang/String;

.field private selectedLabelId:Ljava/io/Serializable;

.field private final storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x78ac723aeb32ac0bL    # 1.923581181710954E273

    const-string v2, "com/iliakplv/notes/gui/main/MainActivity"

    const/16 v3, 0xc9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/gui/main/MainActivity;->NEW_NOTE:Ljava/lang/Integer;

    const/16 v1, 0xc8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    aput-boolean v3, v0, v2

    .line 50
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage;->getStorage()Lcom/iliakplv/notes/notes/storage/NotesStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    .line 51
    iput-boolean v2, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->isDropboxLinked:Z

    .line 53
    iput-boolean v2, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->detailsShown:Z

    .line 56
    sget-object v1, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->ALL_LABELS:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->selectedLabelId:Ljava/io/Serializable;

    aput-boolean v3, v0, v3

    return-void
.end method

.method private closeNoteDetails()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 232
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->isDetailsShown()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x64

    aput-boolean v4, v1, v2

    .line 241
    .local v0, "noteDetailsFragment":Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;
    :goto_0
    const/16 v2, 0x6b

    aput-boolean v4, v1, v2

    return-void

    .line 232
    .end local v0    # "noteDetailsFragment":Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;
    :cond_0
    const/16 v2, 0x65

    aput-boolean v4, v1, v2

    .line 233
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->setDetailsShown(Z)V

    .line 234
    const/16 v2, 0x66

    aput-boolean v4, v1, v2

    .line 235
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;

    .line 236
    .restart local v0    # "noteDetailsFragment":Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;
    if-nez v0, :cond_1

    const/16 v2, 0x67

    aput-boolean v4, v1, v2

    .line 239
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const/16 v2, 0x6a

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 236
    :cond_1
    const/16 v2, 0x68

    aput-boolean v4, v1, v2

    .line 237
    invoke-virtual {v0}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->onBackPressed()V

    const/16 v2, 0x69

    aput-boolean v4, v1, v2

    goto :goto_1
.end method

.method private configureSearchMenu(Landroid/view/Menu;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 268
    const-string v3, "search"

    const/16 v4, 0x7a

    aput-boolean v5, v2, v4

    .line 269
    invoke-virtual {p0, v3}, Lcom/iliakplv/notes/gui/main/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 270
    .local v0, "searchManager":Landroid/app/SearchManager;
    const v3, 0x7f0c0023

    const/16 v4, 0x7b

    aput-boolean v5, v2, v4

    .line 271
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 272
    .local v1, "searchView":Landroid/widget/SearchView;
    const/16 v3, 0x7c

    aput-boolean v5, v2, v3

    .line 273
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    const/16 v4, 0x7d

    aput-boolean v5, v2, v4

    .line 272
    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 274
    const/16 v3, 0x7e

    aput-boolean v5, v2, v3

    return-void
.end method

.method private inflateSortMenu(Landroid/view/Menu;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 277
    const/4 v0, 0x3

    .line 278
    .local v0, "order":I
    const/4 v2, 0x3

    const v3, 0x7f050016

    const/16 v4, 0x7f

    aput-boolean v5, v1, v4

    .line 279
    invoke-interface {p1, v6, v6, v2, v3}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    const/16 v3, 0x80

    aput-boolean v5, v1, v3

    .line 280
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 281
    const/16 v2, 0x81

    aput-boolean v5, v1, v2

    return-void
.end method

.method private isDetailsShown()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    iget-boolean v1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->detailsShown:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method private onShareIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 169
    const-string v1, "share_intent_received"

    invoke-virtual {p0, v1}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    .line 170
    sget-object v1, Lcom/iliakplv/notes/gui/main/MainActivity;->NEW_NOTE:Ljava/lang/Integer;

    const-string v2, "android.intent.extra.SUBJECT"

    const/16 v3, 0x3f

    aput-boolean v5, v0, v3

    .line 171
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iliakplv/notes/utils/StringUtils;->getNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    const/16 v4, 0x40

    aput-boolean v5, v0, v4

    .line 172
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iliakplv/notes/utils/StringUtils;->getNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x41

    aput-boolean v5, v0, v4

    .line 170
    invoke-direct {p0, v1, v2, v3}, Lcom/iliakplv/notes/gui/main/MainActivity;->showNoteDetails(Ljava/io/Serializable;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/16 v1, 0x42

    aput-boolean v5, v0, v1

    return-void
.end method

.method private performDropboxAction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 355
    invoke-static {}, Lcom/iliakplv/notes/utils/ConnectivityUtils;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa1

    aput-boolean v2, v0, v1

    .line 356
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->syncStorage()V

    const/16 v1, 0xa2

    aput-boolean v2, v0, v1

    .line 357
    const v1, 0x7f050013

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0xa3

    aput-boolean v2, v0, v1

    .line 361
    :goto_0
    const/16 v1, 0xa5

    aput-boolean v2, v0, v1

    return-void

    .line 359
    :cond_0
    const v1, 0x7f050039

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0xa4

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method private performSearch(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 140
    invoke-static {p1}, Lcom/iliakplv/notes/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x30

    aput-boolean v2, v0, v1

    .line 145
    :goto_0
    const/16 v1, 0x35

    aput-boolean v2, v0, v1

    return-void

    .line 140
    :cond_0
    const/16 v1, 0x31

    aput-boolean v2, v0, v1

    .line 141
    const-string v1, "note_search"

    invoke-virtual {p0, v1}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v1, 0x32

    aput-boolean v2, v0, v1

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->searchQuery:Ljava/lang/String;

    const/16 v1, 0x33

    aput-boolean v2, v0, v1

    .line 143
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->updateUi()V

    const/16 v1, 0x34

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method private restoreActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x82

    aput-boolean v3, v0, v2

    .line 285
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    const/16 v2, 0x83

    aput-boolean v3, v0, v2

    .line 286
    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 287
    const/16 v1, 0x84

    aput-boolean v3, v0, v1

    return-void
.end method

.method private restoreNotesSortOrder()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 391
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v3, 0xb6

    aput-boolean v4, v1, v3

    .line 392
    const-string v3, "sort_order"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 393
    .local v0, "orderOrdinal":I
    if-ne v0, v5, :cond_0

    const/16 v2, 0xb7

    aput-boolean v4, v1, v2

    .line 396
    :goto_0
    const/16 v2, 0xba

    aput-boolean v4, v1, v2

    return-void

    .line 393
    :cond_0
    const/16 v2, 0xb8

    aput-boolean v4, v1, v2

    .line 394
    invoke-static {}, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->values()[Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->setNotesSortOrder(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)V

    const/16 v2, 0xb9

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private setNotesSortOrder(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->setNotesSortOrder(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xb0

    aput-boolean v4, v0, v1

    .line 388
    :goto_0
    const/16 v1, 0xb5

    aput-boolean v4, v0, v1

    return-void

    .line 383
    :cond_0
    const/16 v1, 0xb1

    aput-boolean v4, v0, v1

    .line 384
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/iliakplv/notes/gui/main/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/16 v2, 0xb2

    aput-boolean v4, v0, v2

    .line 385
    const-string v2, "sort_order"

    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0xb3

    aput-boolean v4, v0, v2

    .line 386
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0xb4

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method private setupNavigationDrawer()V
    .locals 6

    .prologue
    const v5, 0x7f0c0012

    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 111
    const/16 v0, 0x25

    aput-boolean v4, v1, v0

    .line 112
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    iput-object v0, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->navigationDrawerFragment:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    .line 114
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->navigationDrawerFragment:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    const v0, 0x7f0c0010

    const/16 v3, 0x26

    aput-boolean v4, v1, v3

    .line 116
    invoke-virtual {p0, v0}, Lcom/iliakplv/notes/gui/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    const/16 v3, 0x27

    aput-boolean v4, v1, v3

    .line 114
    invoke-virtual {v2, v5, v0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->setUp(ILandroid/support/v4/widget/DrawerLayout;)V

    .line 117
    const/16 v0, 0x28

    aput-boolean v4, v1, v0

    return-void
.end method

.method private showNoteDetails(Ljava/io/Serializable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 177
    invoke-virtual {p0, v5}, Lcom/iliakplv/notes/gui/main/MainActivity;->setDetailsShown(Z)V

    const/16 v1, 0x43

    aput-boolean v5, v0, v1

    .line 179
    new-instance v1, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;

    invoke-direct {v1}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;-><init>()V

    const/16 v2, 0x44

    aput-boolean v5, v0, v2

    .line 180
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/16 v3, 0x45

    aput-boolean v5, v0, v3

    .line 181
    const-string v3, "note_id"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 v3, 0x46

    aput-boolean v5, v0, v3

    .line 182
    const-string v3, "title"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 v3, 0x47

    aput-boolean v5, v0, v3

    .line 183
    const-string v3, "text"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 v3, 0x48

    aput-boolean v5, v0, v3

    .line 184
    invoke-virtual {v1, v2}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    const/16 v2, 0x49

    aput-boolean v5, v0, v2

    .line 186
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const/16 v3, 0x4a

    aput-boolean v5, v0, v3

    .line 187
    const v3, 0x7f0c0011

    sget-object v4, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    const/16 v1, 0x4b

    aput-boolean v5, v0, v1

    .line 188
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    const/16 v1, 0x4c

    aput-boolean v5, v0, v1

    .line 189
    const/16 v1, 0x1003

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    const/16 v1, 0x4d

    aput-boolean v5, v0, v1

    .line 190
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 191
    const/16 v1, 0x4e

    aput-boolean v5, v0, v1

    return-void
.end method

.method private startVoiceInput()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 343
    :try_start_0
    const-string v1, "voice_input"

    invoke-virtual {p0, v1}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v1, 0x99

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 344
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x9a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 345
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x9b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 347
    const-string v2, "android.speech.extra.PROMPT"

    const v3, 0x7f05000e

    invoke-virtual {p0, v3}, Lcom/iliakplv/notes/gui/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x9c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 348
    const/16 v2, 0x2a

    invoke-virtual {p0, v1, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    const/16 v1, 0x9d

    aput-boolean v4, v0, v1

    .line 352
    :goto_0
    const/16 v1, 0xa0

    aput-boolean v4, v0, v1

    return-void

    .line 349
    :catch_0
    move-exception v1

    const/16 v1, 0x9e

    aput-boolean v4, v0, v1

    .line 350
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;->show(Landroid/app/FragmentManager;)V

    const/16 v1, 0x9f

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method private syncStorage()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->sync()V

    .line 128
    const/16 v1, 0x2c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private updateNotesList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 153
    const/16 v2, 0x38

    aput-boolean v4, v1, v2

    .line 154
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/iliakplv/notes/gui/main/NotesListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/gui/main/NotesListFragment;

    .line 155
    .local v0, "noteListFragment":Lcom/iliakplv/notes/gui/main/NotesListFragment;
    if-nez v0, :cond_0

    const/16 v2, 0x39

    aput-boolean v4, v1, v2

    .line 162
    :goto_0
    const/16 v2, 0x3d

    aput-boolean v4, v1, v2

    return-void

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->searchQuery:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/16 v2, 0x3a

    aput-boolean v4, v1, v2

    .line 157
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->showNotesForQuery(Ljava/lang/String;)V

    const/16 v2, 0x3b

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->selectedLabelId:Ljava/io/Serializable;

    invoke-virtual {v0, v2}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->showNotesForLabel(Ljava/io/Serializable;)V

    const/16 v2, 0x3c

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private updateUi()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 148
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->updateNotesList()V

    const/16 v1, 0x36

    aput-boolean v2, v0, v1

    .line 149
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->restoreActionBar()V

    .line 150
    const/16 v1, 0x37

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public createNewNote()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 194
    const-string v1, "note_create_clicked"

    invoke-virtual {p0, v1}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v1, 0x4f

    aput-boolean v2, v0, v1

    .line 195
    sget-object v1, Lcom/iliakplv/notes/gui/main/MainActivity;->NEW_NOTE:Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Lcom/iliakplv/notes/gui/main/MainActivity;->onNoteSelected(Ljava/io/Serializable;)V

    .line 196
    const/16 v1, 0x50

    aput-boolean v2, v0, v1

    return-void
.end method

.method public getNavigationDrawerFragment()Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->navigationDrawerFragment:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    const/16 v2, 0x51

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public isDrawerOpened()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 228
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->navigationDrawerFragment:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    if-nez v0, :cond_0

    const/16 v0, 0x5f

    aput-boolean v1, v2, v0

    :goto_0
    const/4 v0, 0x0

    const/16 v3, 0x62

    aput-boolean v1, v2, v3

    :goto_1
    const/16 v3, 0x63

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->navigationDrawerFragment:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->isDrawerOpen()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x60

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x61

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_1
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 400
    const/16 v1, 0xbb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 365
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 367
    const/16 v0, 0x2a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa6

    aput-boolean v5, v1, v0

    .line 375
    :goto_0
    const/16 v0, 0xad

    aput-boolean v5, v1, v0

    return-void

    .line 368
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const/16 v0, 0xa7

    aput-boolean v5, v1, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0xa8

    aput-boolean v5, v1, v0

    .line 369
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v2, 0xa9

    aput-boolean v5, v1, v2

    .line 370
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xaa

    aput-boolean v5, v1, v0

    goto :goto_0

    :cond_2
    const/16 v2, 0xab

    aput-boolean v5, v1, v2

    .line 371
    sget-object v2, Lcom/iliakplv/notes/gui/main/MainActivity;->NEW_NOTE:Ljava/lang/Integer;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Lcom/iliakplv/notes/gui/main/MainActivity;->showNoteDetails(Ljava/io/Serializable;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xac

    aput-boolean v5, v1, v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->isDrawerOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x56

    aput-boolean v3, v0, v1

    .line 214
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->navigationDrawerFragment:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->closeDrawer()V

    const/16 v1, 0x57

    aput-boolean v3, v0, v1

    .line 225
    :goto_0
    const/16 v1, 0x5e

    aput-boolean v3, v0, v1

    return-void

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->isDetailsShown()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x58

    aput-boolean v3, v0, v1

    .line 217
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->closeNoteDetails()V

    const/16 v1, 0x59

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->searchQuery:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/16 v1, 0x5a

    aput-boolean v3, v0, v1

    .line 220
    :goto_1
    sget-object v1, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->ALL_LABELS:Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Lcom/iliakplv/notes/gui/main/MainActivity;->onLabelSelected(Ljava/io/Serializable;)V

    const/16 v1, 0x5c

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 218
    :cond_2
    sget-object v1, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->ALL_LABELS:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->selectedLabelId:Ljava/io/Serializable;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x5b

    aput-boolean v3, v0, v1

    goto :goto_1

    .line 223
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const/16 v1, 0x5d

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x5

    aput-boolean v2, v4, v1

    .line 74
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/iliakplv/notes/gui/main/MainActivity;->setContentView(I)V

    const/4 v1, 0x6

    aput-boolean v2, v4, v1

    .line 76
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage;->getCurrentStorageType()Lcom/iliakplv/notes/notes/storage/Storage$Type;

    move-result-object v1

    sget-object v5, Lcom/iliakplv/notes/notes/storage/Storage$Type;->Dropbox:Lcom/iliakplv/notes/notes/storage/Storage$Type;

    if-ne v1, v5, :cond_0

    const/4 v1, 0x7

    aput-boolean v2, v4, v1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->isDropboxLinked:Z

    const/16 v1, 0x9

    aput-boolean v2, v4, v1

    .line 77
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const/16 v1, 0xa

    aput-boolean v2, v4, v1

    .line 79
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->restoreNotesSortOrder()V

    const/16 v1, 0xb

    aput-boolean v2, v4, v1

    .line 80
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->setupNavigationDrawer()V

    .line 82
    if-eqz p1, :cond_1

    const/16 v1, 0xc

    aput-boolean v2, v4, v1

    move v0, v2

    .line 83
    .local v0, "fromSaveInstanceState":Z
    :goto_1
    if-eqz v0, :cond_2

    const/16 v1, 0xe

    aput-boolean v2, v4, v1

    .line 84
    const-string v1, "details_fragment_shown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/iliakplv/notes/gui/main/MainActivity;->setDetailsShown(Z)V

    const/16 v1, 0xf

    aput-boolean v2, v4, v1

    .line 85
    const-string v1, "selected_label_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->selectedLabelId:Ljava/io/Serializable;

    const/16 v1, 0x10

    aput-boolean v2, v4, v1

    .line 86
    const-string v1, "search_query"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->searchQuery:Ljava/lang/String;

    const/16 v1, 0x11

    aput-boolean v2, v4, v1

    .line 108
    :goto_2
    const/16 v1, 0x24

    aput-boolean v2, v4, v1

    return-void

    .line 76
    .end local v0    # "fromSaveInstanceState":Z
    :cond_0
    const/16 v1, 0x8

    aput-boolean v2, v4, v1

    move v1, v3

    goto :goto_0

    .line 82
    :cond_1
    const/16 v1, 0xd

    aput-boolean v2, v4, v1

    move v0, v3

    goto :goto_1

    .line 88
    .restart local v0    # "fromSaveInstanceState":Z
    :cond_2
    new-instance v1, Lcom/iliakplv/notes/gui/main/NotesListFragment;

    invoke-direct {v1}, Lcom/iliakplv/notes/gui/main/NotesListFragment;-><init>()V

    const/16 v5, 0x12

    aput-boolean v2, v4, v5

    .line 89
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->setArguments(Landroid/os/Bundle;)V

    const/16 v5, 0x13

    aput-boolean v2, v4, v5

    .line 90
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const/16 v6, 0x14

    aput-boolean v2, v4, v6

    .line 91
    const v6, 0x7f0c0011

    sget-object v7, Lcom/iliakplv/notes/gui/main/NotesListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6, v1, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    const/16 v1, 0x15

    aput-boolean v2, v4, v1

    .line 92
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    const/16 v1, 0x16

    aput-boolean v2, v4, v1

    .line 94
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v5, 0x17

    aput-boolean v2, v4, v5

    .line 95
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v3, 0x18

    aput-boolean v2, v4, v3

    .line 96
    const-string v3, "text/plain"

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v1, 0x19

    aput-boolean v2, v4, v1

    goto :goto_2

    :cond_3
    const/16 v3, 0x1a

    aput-boolean v2, v4, v3

    .line 97
    invoke-direct {p0, v1}, Lcom/iliakplv/notes/gui/main/MainActivity;->onShareIntent(Landroid/content/Intent;)V

    const/16 v1, 0x1b

    aput-boolean v2, v4, v1

    goto :goto_2

    .line 99
    :cond_4
    iget-boolean v1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->isDropboxLinked:Z

    if-nez v1, :cond_5

    const/16 v1, 0x1c

    aput-boolean v2, v4, v1

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0x1d

    aput-boolean v2, v4, v1

    .line 100
    invoke-virtual {p0, v3}, Lcom/iliakplv/notes/gui/main/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v5, 0x1e

    aput-boolean v2, v4, v5

    .line 101
    const-string v5, "announcement"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_6

    const/16 v1, 0x1f

    aput-boolean v2, v4, v1

    goto/16 :goto_2

    :cond_6
    const/16 v5, 0x20

    aput-boolean v2, v4, v5

    .line 102
    const-string v5, "dropbox_announcement_first"

    invoke-virtual {p0, v5}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v5, 0x21

    aput-boolean v2, v4, v5

    .line 103
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static {v5}, Lcom/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog;->show(Landroid/app/FragmentManager;)V

    const/16 v5, 0x22

    aput-boolean v2, v4, v5

    .line 104
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "announcement"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x23

    aput-boolean v2, v4, v1

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 254
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->isDrawerOpened()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x70

    aput-boolean v1, v2, v0

    .line 255
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->isDetailsShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x71

    aput-boolean v1, v2, v0

    .line 261
    :goto_0
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->restoreActionBar()V

    .line 262
    const/16 v0, 0x78

    aput-boolean v1, v2, v0

    move v0, v1

    .line 264
    :goto_1
    return v0

    .line 256
    :cond_0
    iget-boolean v0, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->isDropboxLinked:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0b0001

    const/16 v3, 0x72

    aput-boolean v1, v2, v3

    :goto_2
    const/16 v3, 0x74

    aput-boolean v1, v2, v3

    .line 257
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/16 v0, 0x75

    aput-boolean v1, v2, v0

    .line 258
    invoke-direct {p0, p1}, Lcom/iliakplv/notes/gui/main/MainActivity;->inflateSortMenu(Landroid/view/Menu;)V

    const/16 v0, 0x76

    aput-boolean v1, v2, v0

    .line 259
    invoke-direct {p0, p1}, Lcom/iliakplv/notes/gui/main/MainActivity;->configureSearchMenu(Landroid/view/Menu;)V

    const/16 v0, 0x77

    aput-boolean v1, v2, v0

    goto :goto_0

    .line 256
    :cond_1
    const/high16 v0, 0x7f0b0000

    const/16 v3, 0x73

    aput-boolean v1, v2, v3

    goto :goto_2

    .line 264
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    const/16 v3, 0x79

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method public onLabelSelected(Ljava/io/Serializable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 132
    const-string v1, "label_selected"

    invoke-virtual {p0, v1}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->selectedLabelId:Ljava/io/Serializable;

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->searchQuery:Ljava/lang/String;

    const/16 v1, 0x2d

    aput-boolean v2, v0, v1

    .line 135
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->closeNoteDetails()V

    const/16 v1, 0x2e

    aput-boolean v2, v0, v1

    .line 136
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->updateUi()V

    .line 137
    const/16 v1, 0x2f

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 245
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x6c

    aput-boolean v3, v0, v1

    .line 248
    :goto_0
    const/16 v1, 0x6f

    aput-boolean v3, v0, v1

    return-void

    .line 245
    :cond_0
    const/16 v1, 0x6d

    aput-boolean v3, v0, v1

    .line 246
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iliakplv/notes/gui/main/MainActivity;->performSearch(Ljava/lang/String;)V

    const/16 v1, 0x6e

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onNoteSelected(Ljava/io/Serializable;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 165
    invoke-direct {p0, p1, v1, v1}, Lcom/iliakplv/notes/gui/main/MainActivity;->showNoteDetails(Ljava/io/Serializable;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/16 v1, 0x3e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 291
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 292
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v2, 0x85

    aput-boolean v1, v3, v2

    .line 338
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    const/16 v4, 0x98

    aput-boolean v1, v3, v4

    move v1, v2

    :goto_1
    return v1

    .line 295
    :pswitch_1
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->createNewNote()V

    .line 296
    const/16 v2, 0x86

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 298
    :pswitch_2
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->startVoiceInput()V

    .line 299
    const/16 v2, 0x87

    aput-boolean v1, v3, v2

    goto :goto_0

    .line 303
    :pswitch_3
    const-string v2, "sort_by_title"

    invoke-virtual {p0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v2, 0x88

    aput-boolean v1, v3, v2

    .line 304
    sget-object v2, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->Title:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    invoke-direct {p0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->setNotesSortOrder(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)V

    .line 305
    const/16 v2, 0x89

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 307
    :pswitch_4
    const-string v2, "sort_by_create_asc"

    invoke-virtual {p0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v2, 0x8a

    aput-boolean v1, v3, v2

    .line 308
    sget-object v2, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->CreateDateAscending:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    invoke-direct {p0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->setNotesSortOrder(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)V

    .line 309
    const/16 v2, 0x8b

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 311
    :pswitch_5
    const-string v2, "sort_by_create_desc"

    invoke-virtual {p0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v2, 0x8c

    aput-boolean v1, v3, v2

    .line 312
    sget-object v2, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->CreateDateDescending:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    invoke-direct {p0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->setNotesSortOrder(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)V

    .line 313
    const/16 v2, 0x8d

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 315
    :pswitch_6
    const-string v2, "sort_by_change"

    invoke-virtual {p0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v2, 0x8e

    aput-boolean v1, v3, v2

    .line 316
    sget-object v2, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->ChangeDate:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    invoke-direct {p0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->setNotesSortOrder(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)V

    .line 317
    const/16 v2, 0x8f

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 320
    :pswitch_7
    const-string v2, "show_settings"

    invoke-virtual {p0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v2, 0x90

    aput-boolean v1, v3, v2

    .line 321
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->showAppSettings()V

    .line 322
    const/16 v2, 0x91

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 324
    :pswitch_8
    const-string v2, "show_about"

    invoke-virtual {p0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v2, 0x92

    aput-boolean v1, v3, v2

    .line 325
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->show(Landroid/app/FragmentManager;)V

    .line 326
    const/16 v2, 0x93

    aput-boolean v1, v3, v2

    goto/16 :goto_1

    .line 330
    :pswitch_9
    const-string v2, "dropbox_action"

    invoke-virtual {p0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v2, 0x94

    aput-boolean v1, v3, v2

    .line 331
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->performDropboxAction()V

    .line 332
    const/16 v2, 0x95

    aput-boolean v1, v3, v2

    goto/16 :goto_1

    .line 334
    :pswitch_a
    const-string v2, "dropbox_announcement"

    invoke-virtual {p0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v2, 0x96

    aput-boolean v1, v3, v2

    .line 335
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog;->show(Landroid/app/FragmentManager;)V

    .line 336
    const/16 v2, 0x97

    aput-boolean v1, v3, v2

    goto/16 :goto_1

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0021
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 403
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 405
    const-string v1, "jacoco"

    const/16 v3, 0xbc

    aput-boolean v9, v2, v3

    .line 408
    const-string v3, "StorageSt"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xbd

    aput-boolean v9, v2, v3

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "coverage.exec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xbe

    aput-boolean v9, v2, v4

    .line 410
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xbf

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v2, v3

    .line 412
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    const/16 v3, 0xc0

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    .line 413
    const-string v3, "com.vladium.emma.rt.RT"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 414
    .local v0, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "dumpCoverageData"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/16 v7, 0xc1

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 415
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/16 v6, 0xc2

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 414
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v5, 0xc3

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 417
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xc4

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 418
    const-string v3, "generateCoverageReport: ok"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    const/16 v1, 0xc7

    aput-boolean v9, v2, v1

    return-void

    .line 419
    :catch_0
    move-exception v1

    const/16 v3, 0xc5

    aput-boolean v9, v2, v3

    .line 420
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Is emma jar on classpath?"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0xc6

    aput-boolean v9, v2, v1

    throw v3
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/16 v1, 0x29

    aput-boolean v2, v0, v1

    .line 122
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->updateUi()V

    const/16 v1, 0x2a

    aput-boolean v2, v0, v1

    .line 123
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->syncStorage()V

    .line 124
    const/16 v1, 0x2b

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/16 v1, 0x52

    aput-boolean v3, v0, v1

    .line 205
    const-string v1, "details_fragment_shown"

    iget-boolean v2, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->detailsShown:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x53

    aput-boolean v3, v0, v1

    .line 206
    const-string v1, "selected_label_id"

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->selectedLabelId:Ljava/io/Serializable;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 v1, 0x54

    aput-boolean v3, v0, v1

    .line 207
    const-string v1, "search_query"

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->searchQuery:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/16 v1, 0x55

    aput-boolean v3, v0, v1

    return-void
.end method

.method public setDetailsShown(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    iput-boolean p1, p0, Lcom/iliakplv/notes/gui/main/MainActivity;->detailsShown:Z

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 67
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/MainActivity;->invalidateOptionsMenu()V

    .line 68
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method

.method public showAppSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 378
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/iliakplv/notes/gui/settings/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0xae

    aput-boolean v3, v0, v2

    .line 379
    invoke-virtual {p0, v1}, Lcom/iliakplv/notes/gui/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 380
    const/16 v1, 0xaf

    aput-boolean v3, v0, v1

    return-void
.end method
