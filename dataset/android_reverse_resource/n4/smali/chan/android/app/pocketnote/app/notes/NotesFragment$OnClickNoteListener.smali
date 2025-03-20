.class Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/notes/NotesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnClickNoteListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private cursorAdapter:Landroid/widget/CursorAdapter;

.field private fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x171da03d80c472a9L

    const-string v2, "chan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/widget/CursorAdapter;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;->$jacocoInit()[Z

    move-result-object v0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;->cursorAdapter:Landroid/widget/CursorAdapter;

    .line 308
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;->fragment:Landroid/support/v4/app/Fragment;

    .line 309
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$600(Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;Lchan/android/app/pocketnote/app/Note;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;->$jacocoInit()[Z

    move-result-object v0

    .line 300
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;->launchEditNoteActivity(Lchan/android/app/pocketnote/app/Note;)V

    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private launchEditNoteActivity(Lchan/android/app/pocketnote/app/Note;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;->$jacocoInit()[Z

    move-result-object v0

    .line 335
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x9

    aput-boolean v4, v0, v2

    .line 336
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v2, 0xa

    aput-boolean v4, v0, v2

    .line 337
    const-string v2, "note_bundle_key"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v2, 0xb

    aput-boolean v4, v0, v2

    .line 338
    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 339
    const/16 v1, 0xc

    aput-boolean v4, v0, v1

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;->$jacocoInit()[Z

    move-result-object v1

    .line 313
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;->cursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    aput-boolean v5, v1, v5

    .line 314
    invoke-static {v0}, Lchan/android/app/pocketnote/app/Note;->fromCursor(Landroid/database/Cursor;)Lchan/android/app/pocketnote/app/Note;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v5, v1, v2

    .line 315
    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/Note;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    aput-boolean v5, v1, v2

    .line 316
    new-instance v2, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    invoke-direct {v2}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;-><init>()V

    const/4 v3, 0x4

    aput-boolean v5, v1, v3

    .line 317
    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {v2, v3, v4}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-boolean v5, v1, v3

    .line 318
    new-instance v3, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener$1;

    invoke-direct {v3, p0, v2, v0}, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener$1;-><init>(Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;Lchan/android/app/pocketnote/app/Note;)V

    invoke-virtual {v2, v3}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->setOnPasswordEnterListener(Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$OnPasswordEnterListener;)V

    .line 329
    const/4 v0, 0x6

    aput-boolean v5, v1, v0

    .line 332
    :goto_0
    const/16 v0, 0x8

    aput-boolean v5, v1, v0

    return-void

    .line 330
    :cond_0
    invoke-direct {p0, v0}, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;->launchEditNoteActivity(Lchan/android/app/pocketnote/app/Note;)V

    const/4 v0, 0x7

    aput-boolean v5, v1, v0

    goto :goto_0
.end method
