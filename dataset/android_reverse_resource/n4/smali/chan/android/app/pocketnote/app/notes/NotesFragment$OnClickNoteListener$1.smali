.class Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener$1;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$OnPasswordEnterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;

.field final synthetic val$d:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

.field final synthetic val$note:Lchan/android/app/pocketnote/app/Note;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x21be34a4c42f421aL    # -1.1109904046872757E146

    const-string v2, "chan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener$1"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;Lchan/android/app/pocketnote/app/Note;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener$1;->$jacocoInit()[Z

    move-result-object v0

    .line 318
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener$1;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;

    iput-object p2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener$1;->val$d:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    iput-object p3, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener$1;->val$note:Lchan/android/app/pocketnote/app/Note;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onEnter(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener$1;->$jacocoInit()[Z

    move-result-object v0

    .line 321
    invoke-static {p1}, Lchan/android/app/pocketnote/app/AppPreferences;->hasCorrectPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    aput-boolean v3, v0, v3

    .line 322
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener$1;->val$d:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->dismiss()V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 323
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener$1;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener$1;->val$note:Lchan/android/app/pocketnote/app/Note;

    invoke-static {v1, v2}, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;->access$600(Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener;Lchan/android/app/pocketnote/app/Note;)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 327
    :goto_0
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$OnClickNoteListener$1;->val$d:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    const-string v2, "Your password is incorrect!"

    invoke-virtual {v1, v2}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->showErrorMessage(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
