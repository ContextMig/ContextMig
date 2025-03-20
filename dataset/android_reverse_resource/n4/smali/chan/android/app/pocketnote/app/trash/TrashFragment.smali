.class public Lchan/android/app/pocketnote/app/trash/TrashFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TrashFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;,
        Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;,
        Lchan/android/app/pocketnote/app/trash/TrashFragment$ViewHolder;
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

.field public static final TAG:Ljava/lang/String; = "Trash"


# instance fields
.field private adapter:Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;

.field private listView:Lchan/android/app/pocketnote/util/view/RoundedRectListView;

.field private viewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x32976338b3930dfeL    # 5.551959694140934E-65

    const-string v2, "chan/android/app/pocketnote/app/trash/TrashFragment"

    const/16 v3, 0x29

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lchan/android/app/pocketnote/app/trash/TrashFragment;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->restartLoader(Landroid/os/Bundle;)V

    const/16 v1, 0x28

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static newInstance()Lchan/android/app/pocketnote/app/trash/TrashFragment;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    new-instance v1, Lchan/android/app/pocketnote/app/trash/TrashFragment;

    invoke-direct {v1}, Lchan/android/app/pocketnote/app/trash/TrashFragment;-><init>()V

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method private restartLoader(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    .line 86
    iget-object v1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->adapter:Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;->notifyDataSetChanged()V

    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    .line 87
    iget-object v1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->listView:Lchan/android/app/pocketnote/util/view/RoundedRectListView;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/util/view/RoundedRectListView;->invalidate()V

    .line 88
    const/16 v1, 0xe

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 47
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 48
    new-instance v1, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030038

    invoke-direct {v1, p0, v2, v3}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;-><init>(Lchan/android/app/pocketnote/app/trash/TrashFragment;Landroid/content/Context;I)V

    iput-object v1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->adapter:Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    .line 49
    invoke-virtual {p0, v4}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->setHasOptionsMenu(Z)V

    .line 50
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 10
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
    const/4 v9, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->$jacocoInit()[Z

    move-result-object v8

    .line 124
    const-string v7, ""

    const/16 v0, 0x1b

    aput-boolean v9, v8, v0

    .line 125
    if-nez p2, :cond_0

    const/16 v0, 0x1c

    aput-boolean v9, v8, v0

    .line 129
    .local v7, "query":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->COLUMNS:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trashed=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "modified_time DESC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x20

    aput-boolean v9, v8, v1

    return-object v0

    .line 125
    .end local v7    # "query":Ljava/lang/String;
    :cond_0
    const-string v0, "query"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x1d

    aput-boolean v9, v8, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    aput-boolean v9, v8, v0

    .line 126
    const-string v0, "query"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "query":Ljava/lang/String;
    const/16 v0, 0x1f

    aput-boolean v9, v8, v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 54
    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->clear()V

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 55
    const v0, 0x7f0e0005

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    .line 56
    const v0, 0x7f0c00c5

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    .line 57
    new-instance v2, Lchan/android/app/pocketnote/app/trash/TrashFragment$1;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/trash/TrashFragment$1;-><init>(Lchan/android/app/pocketnote/app/trash/TrashFragment;)V

    const/16 v3, 0x9

    aput-boolean v4, v1, v3

    .line 80
    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    .line 81
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 82
    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 111
    const-string v0, "TrashFragment.onCreateView()"

    invoke-static {v0}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v0, 0x14

    aput-boolean v5, v1, v0

    .line 112
    const v0, 0x7f030037

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/16 v0, 0x15

    aput-boolean v5, v1, v0

    .line 113
    const v0, 0x7f0c00b7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    const/16 v0, 0x16

    aput-boolean v5, v1, v0

    .line 114
    iget-object v0, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    const/16 v0, 0x17

    aput-boolean v5, v1, v0

    .line 116
    const v0, 0x7f0c00b8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/util/view/RoundedRectListView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->listView:Lchan/android/app/pocketnote/util/view/RoundedRectListView;

    const/16 v0, 0x18

    aput-boolean v5, v1, v0

    .line 117
    iget-object v0, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->listView:Lchan/android/app/pocketnote/util/view/RoundedRectListView;

    iget-object v3, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->adapter:Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;

    invoke-virtual {v0, v3}, Lchan/android/app/pocketnote/util/view/RoundedRectListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0x19

    aput-boolean v5, v1, v0

    .line 118
    iget-object v0, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->listView:Lchan/android/app/pocketnote/util/view/RoundedRectListView;

    new-instance v3, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;

    iget-object v4, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->adapter:Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;

    invoke-direct {v3, p0, v4}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;-><init>(Lcom/actionbarsherlock/app/SherlockFragment;Landroid/widget/CursorAdapter;)V

    invoke-virtual {v0, v3}, Lchan/android/app/pocketnote/util/view/RoundedRectListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    const/16 v0, 0x1a

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

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    iget-object v1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->adapter:Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;

    invoke-virtual {v1, p2}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    const/16 v1, 0x21

    aput-boolean v3, v0, v1

    .line 138
    iget-object v1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->adapter:Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x22

    aput-boolean v3, v0, v1

    .line 139
    iget-object v1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    const/16 v1, 0x23

    aput-boolean v3, v0, v1

    .line 143
    :goto_0
    const/16 v1, 0x25

    aput-boolean v3, v0, v1

    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    const/16 v1, 0x24

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    const/16 v1, 0x27

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 3
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
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 147
    iget-object v1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment;->adapter:Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashNoteCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 148
    const/16 v1, 0x26

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 92
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0xf

    aput-boolean v4, v0, v1

    .line 106
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    const/16 v2, 0x13

    aput-boolean v4, v0, v2

    return v1

    .line 94
    :pswitch_0
    new-instance v1, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;

    invoke-direct {v1}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;-><init>()V

    const/16 v2, 0x10

    aput-boolean v4, v0, v2

    .line 95
    new-instance v2, Lchan/android/app/pocketnote/app/trash/TrashFragment$2;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/trash/TrashFragment$2;-><init>(Lchan/android/app/pocketnote/app/trash/TrashFragment;)V

    invoke-virtual {v1, v2}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->setOnConfirmListener(Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$OnConfirmListener;)V

    const/16 v2, 0x11

    aput-boolean v4, v0, v2

    .line 103
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "confirm_dialog"

    invoke-virtual {v1, v2, v3}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/16 v1, 0x12

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x7f0c00c6
        :pswitch_0
    .end packed-switch
.end method
