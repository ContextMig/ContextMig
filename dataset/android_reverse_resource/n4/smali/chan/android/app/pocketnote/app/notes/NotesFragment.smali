.class public Lchan/android/app/pocketnote/app/notes/NotesFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "NotesFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final FLIPPER_EMPTY:I = 0x2

.field private static final FLIPPER_GRID_VIEW:I = 0x1

.field private static final FLIPPER_LIST_VIEW:I = 0x0

.field private static final FLIPPER_NOT_FOUND:I = 0x3

.field public static final TAG:Ljava/lang/String; = "notes"


# instance fields
.field private currentCollectionViewIndex:I

.field private currentSearchQuery:Ljava/lang/String;

.field private currentSortByColumn:Ljava/lang/String;

.field private currentSortOrder:Ljava/lang/String;

.field private gridAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

.field private gridView:Landroid/widget/GridView;

.field private layoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private linearLayoutEmpty:Landroid/widget/LinearLayout;

.field private listAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

.field private listView:Landroid/widget/ListView;

.field private optionButton:Landroid/widget/ImageView;

.field private viewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7884f24d383de779L

    const-string v2, "chan/android/app/pocketnote/app/notes/NotesFragment"

    const/16 v3, 0x61

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 52
    const-string v1, "modified_time"

    iput-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSortByColumn:Ljava/lang/String;

    .line 54
    const-string v1, "DESC"

    iput-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSortOrder:Ljava/lang/String;

    .line 56
    const-string v1, ""

    iput-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSearchQuery:Ljava/lang/String;

    .line 62
    iput v2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentCollectionViewIndex:I

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lchan/android/app/pocketnote/app/notes/NotesFragment;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->restartLoader(Landroid/os/Bundle;)V

    const/16 v1, 0x5a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lchan/android/app/pocketnote/app/notes/NotesFragment;)I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentCollectionViewIndex:I

    const/16 v2, 0x5b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$102(Lchan/android/app/pocketnote/app/notes/NotesFragment;I)I
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iput p1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentCollectionViewIndex:I

    const/16 v1, 0x5c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method static synthetic access$200(Lchan/android/app/pocketnote/app/notes/NotesFragment;)Landroid/widget/ViewFlipper;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    const/16 v2, 0x5d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lchan/android/app/pocketnote/app/notes/NotesFragment;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSortOrder:Ljava/lang/String;

    const/16 v2, 0x5e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$400(Lchan/android/app/pocketnote/app/notes/NotesFragment;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSortByColumn:Ljava/lang/String;

    const/16 v2, 0x5f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$500(Lchan/android/app/pocketnote/app/notes/NotesFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->sortBy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x60

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private checkPreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 208
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getDefaultSortBy()I

    move-result v0

    .line 209
    .local v0, "sortBy":I
    if-nez v0, :cond_0

    .line 210
    const-string v2, "modified_time"

    iput-object v2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSortByColumn:Ljava/lang/String;

    const/16 v2, 0x27

    aput-boolean v3, v1, v2

    .line 217
    :goto_0
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getDefaultCollectionView()I

    move-result v2

    iput v2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentCollectionViewIndex:I

    .line 218
    const/16 v2, 0x2b

    aput-boolean v3, v1, v2

    return-void

    .line 211
    :cond_0
    if-ne v0, v3, :cond_1

    .line 212
    const-string v2, "content"

    iput-object v2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSortByColumn:Ljava/lang/String;

    const/16 v2, 0x28

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 213
    :cond_1
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/16 v2, 0x29

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 214
    :cond_2
    const-string v2, "color"

    iput-object v2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSortByColumn:Ljava/lang/String;

    const/16 v2, 0x2a

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public static newInstance()Lchan/android/app/pocketnote/app/notes/NotesFragment;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    new-instance v1, Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-direct {v1}, Lchan/android/app/pocketnote/app/notes/NotesFragment;-><init>()V

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method private restartLoader(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 222
    if-nez p1, :cond_0

    const/16 v1, 0x2c

    aput-boolean v3, v0, v1

    .line 228
    :goto_0
    const/16 v1, 0x32

    aput-boolean v3, v0, v1

    return-void

    .line 222
    :cond_0
    const/16 v1, 0x2d

    aput-boolean v3, v0, v1

    .line 223
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->listAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->notifyDataSetChanged()V

    const/16 v1, 0x2e

    aput-boolean v3, v0, v1

    .line 224
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->startLayoutAnimation()V

    const/16 v1, 0x2f

    aput-boolean v3, v0, v1

    .line 225
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->gridAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->notifyDataSetChanged()V

    const/16 v1, 0x30

    aput-boolean v3, v0, v1

    .line 226
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->startLayoutAnimation()V

    const/16 v1, 0x31

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private sortBy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 231
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x33

    aput-boolean v3, v0, v2

    .line 232
    const-string v2, "old_column"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x34

    aput-boolean v3, v0, v2

    .line 233
    const-string v2, "new_column"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x35

    aput-boolean v3, v0, v2

    .line 234
    const-string v2, "old_sort_order"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x36

    aput-boolean v3, v0, v2

    .line 235
    const-string v2, "collection_view_index"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0x37

    aput-boolean v3, v0, v2

    .line 236
    invoke-direct {p0, v1}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->restartLoader(Landroid/os/Bundle;)V

    .line 237
    const/16 v1, 0x38

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    .line 122
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    const/16 v1, 0xc

    aput-boolean v4, v0, v1

    .line 123
    new-instance v1, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030023

    invoke-direct {v1, v2, v3}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->gridAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    .line 124
    new-instance v1, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030025

    invoke-direct {v1, v2, v3}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->listAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    const/16 v1, 0xe

    aput-boolean v4, v0, v1

    .line 125
    invoke-virtual {p0, v4}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->setHasOptionsMenu(Z)V

    .line 126
    const/16 v1, 0xf

    aput-boolean v4, v0, v1

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v8

    .line 241
    const-string v0, "onCreateLoader()"

    invoke-static {v0}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    .line 242
    if-eqz p2, :cond_5

    const/16 v0, 0x39

    aput-boolean v10, v8, v0

    .line 244
    const-string v0, "old_column"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    aput-boolean v10, v8, v1

    .line 245
    const-string v1, "new_column"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 246
    .local v7, "newColumn":Ljava/lang/String;
    if-nez v0, :cond_0

    const/16 v0, 0x3b

    aput-boolean v10, v8, v0

    .line 256
    :goto_0
    const-string v0, "query"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const/16 v0, 0x44

    aput-boolean v10, v8, v0

    .line 261
    :goto_1
    const-string v0, "collection_view_index"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentCollectionViewIndex:I

    .line 262
    const/16 v0, 0x47

    aput-boolean v10, v8, v0

    .line 265
    .end local v7    # "newColumn":Ljava/lang/String;
    :goto_2
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->COLUMNS:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trashed=0 AND calendar_year=-1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSearchQuery:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSortByColumn:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSortOrder:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x49

    aput-boolean v10, v8, v1

    return-object v0

    .line 246
    .restart local v7    # "newColumn":Ljava/lang/String;
    :cond_0
    if-nez v7, :cond_1

    const/16 v0, 0x3c

    aput-boolean v10, v8, v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x3d

    aput-boolean v10, v8, v1

    .line 247
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3e

    aput-boolean v10, v8, v0

    .line 248
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSortOrder:Ljava/lang/String;

    const-string v1, "DESC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ASC"

    const/16 v1, 0x3f

    aput-boolean v10, v8, v1

    :goto_3
    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSortOrder:Ljava/lang/String;

    const/16 v0, 0x41

    aput-boolean v10, v8, v0

    .line 252
    :goto_4
    iput-object v7, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSortByColumn:Ljava/lang/String;

    const/16 v0, 0x43

    aput-boolean v10, v8, v0

    goto/16 :goto_0

    .line 248
    :cond_2
    const-string v0, "DESC"

    const/16 v1, 0x40

    aput-boolean v10, v8, v1

    goto :goto_3

    .line 250
    :cond_3
    const-string v0, "DESC"

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSortOrder:Ljava/lang/String;

    const/16 v0, 0x42

    aput-boolean v10, v8, v0

    goto :goto_4

    .line 256
    :cond_4
    const/16 v0, 0x45

    aput-boolean v10, v8, v0

    .line 257
    const-string v0, "query"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSearchQuery:Ljava/lang/String;

    const/16 v0, 0x46

    aput-boolean v10, v8, v0

    goto/16 :goto_1

    .line 263
    .end local v7    # "newColumn":Ljava/lang/String;
    :cond_5
    const-string v0, ""

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSearchQuery:Ljava/lang/String;

    const/16 v0, 0x48

    aput-boolean v10, v8, v0

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 70
    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->clear()V

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 71
    const v0, 0x7f0e0002

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 72
    const v0, 0x7f0c00c0

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    .line 73
    new-instance v2, Lchan/android/app/pocketnote/app/notes/NotesFragment$1;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/notes/NotesFragment$1;-><init>(Lchan/android/app/pocketnote/app/notes/NotesFragment;)V

    const/4 v3, 0x5

    aput-boolean v4, v1, v3

    .line 105
    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 106
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 107
    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 130
    const-string v0, "NoteFragment.onCreateView()"

    invoke-static {v0}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v0, 0x10

    aput-boolean v5, v1, v0

    .line 131
    const v0, 0x7f030026

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/16 v0, 0x11

    aput-boolean v5, v1, v0

    .line 134
    const v0, 0x7f0c007e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    const/16 v0, 0x12

    aput-boolean v5, v1, v0

    .line 137
    const v0, 0x7f0c0081

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->linearLayoutEmpty:Landroid/widget/LinearLayout;

    const/16 v0, 0x13

    aput-boolean v5, v1, v0

    .line 138
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->linearLayoutEmpty:Landroid/widget/LinearLayout;

    new-instance v3, Lchan/android/app/pocketnote/app/notes/NotesFragment$2;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/notes/NotesFragment$2;-><init>(Lchan/android/app/pocketnote/app/notes/NotesFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x14

    aput-boolean v5, v1, v0

    .line 146
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    const/16 v0, 0x15

    aput-boolean v5, v1, v0

    .line 149
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f040002

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->layoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    const/16 v0, 0x16

    aput-boolean v5, v1, v0

    .line 152
    const v0, 0x7f0c0080

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->gridView:Landroid/widget/GridView;

    const/16 v0, 0x17

    aput-boolean v5, v1, v0

    .line 153
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->gridView:Landroid/widget/GridView;

    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->gridAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0x18

    aput-boolean v5, v1, v0

    .line 154
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->gridView:Landroid/widget/GridView;

    new-instance v3, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener;

    iget-object v4, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->gridAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    invoke-direct {v3, p0, v4}, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener;-><init>(Lcom/actionbarsherlock/app/SherlockFragment;Landroid/widget/BaseAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const/16 v0, 0x19

    aput-boolean v5, v1, v0

    .line 155
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->gridView:Landroid/widget/GridView;

    new-instance v3, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;

    iget-object v4, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->gridAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    invoke-direct {v3, p0, v4}, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;-><init>(Landroid/support/v4/app/Fragment;Landroid/widget/CursorAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v0, 0x1a

    aput-boolean v5, v1, v0

    .line 156
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->gridView:Landroid/widget/GridView;

    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->layoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    const/16 v0, 0x1b

    aput-boolean v5, v1, v0

    .line 159
    const v0, 0x7f0c007f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->listView:Landroid/widget/ListView;

    const/16 v0, 0x1c

    aput-boolean v5, v1, v0

    .line 160
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->listAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0x1d

    aput-boolean v5, v1, v0

    .line 161
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->listView:Landroid/widget/ListView;

    new-instance v3, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener;

    iget-object v4, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->listAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    invoke-direct {v3, p0, v4}, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener;-><init>(Lcom/actionbarsherlock/app/SherlockFragment;Landroid/widget/BaseAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const/16 v0, 0x1e

    aput-boolean v5, v1, v0

    .line 162
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->listView:Landroid/widget/ListView;

    new-instance v3, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;

    iget-object v4, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->listAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    invoke-direct {v3, p0, v4}, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;-><init>(Landroid/support/v4/app/Fragment;Landroid/widget/CursorAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v0, 0x1f

    aput-boolean v5, v1, v0

    .line 163
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->layoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    const/16 v0, 0x20

    aput-boolean v5, v1, v0

    .line 166
    const v0, 0x7f0c0082

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->optionButton:Landroid/widget/ImageView;

    const/16 v0, 0x21

    aput-boolean v5, v1, v0

    .line 167
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->optionButton:Landroid/widget/ImageView;

    new-instance v3, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;-><init>(Lchan/android/app/pocketnote/app/notes/NotesFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x22

    aput-boolean v5, v1, v0

    .line 195
    invoke-direct {p0}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->checkPreferences()V

    .line 197
    const/16 v0, 0x23

    aput-boolean v5, v1, v0

    return-object v2
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 278
    const-string v1, "onLoadFinished()"

    invoke-static {v1}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v1, 0x4a

    aput-boolean v3, v0, v1

    .line 279
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->listAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    invoke-virtual {v1, p2}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    const/16 v1, 0x4b

    aput-boolean v3, v0, v1

    .line 280
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->gridAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    invoke-virtual {v1, p2}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    const/16 v1, 0x4c

    aput-boolean v3, v0, v1

    .line 281
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->listAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4d

    aput-boolean v3, v0, v1

    .line 289
    :goto_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    iget v2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentCollectionViewIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    const/16 v1, 0x54

    aput-boolean v3, v0, v1

    .line 291
    :goto_1
    const/16 v1, 0x55

    aput-boolean v3, v0, v1

    return-void

    .line 281
    :cond_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->gridAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x4e

    aput-boolean v3, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x4f

    aput-boolean v3, v0, v1

    .line 282
    const-string v1, "onLoadFinished() = both empty?"

    invoke-static {v1}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v1, 0x50

    aput-boolean v3, v0, v1

    .line 283
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->currentSearchQuery:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x51

    aput-boolean v3, v0, v1

    .line 284
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    const/16 v1, 0x52

    aput-boolean v3, v0, v1

    goto :goto_1

    .line 286
    :cond_2
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    const/16 v1, 0x53

    aput-boolean v3, v0, v1

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    const/16 v1, 0x59

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 295
    const-string v1, "onLoaderReset()"

    invoke-static {v1}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v1, 0x56

    aput-boolean v2, v0, v1

    .line 296
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->listAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    invoke-virtual {v1, v3}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    const/16 v1, 0x57

    aput-boolean v2, v0, v1

    .line 297
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment;->gridAdapter:Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;

    invoke-virtual {v1, v3}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 298
    const/16 v1, 0x58

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 111
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    .line 116
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    const/16 v2, 0xa

    aput-boolean v4, v0, v2

    return v1

    .line 113
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    const-class v3, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x7f0c00c1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 201
    invoke-direct {p0}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->checkPreferences()V

    const/16 v1, 0x24

    aput-boolean v2, v0, v1

    .line 202
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->restartLoader(Landroid/os/Bundle;)V

    const/16 v1, 0x25

    aput-boolean v2, v0, v1

    .line 203
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 204
    const/16 v1, 0x26

    aput-boolean v2, v0, v1

    return-void
.end method
