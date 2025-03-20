.class Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$8;
.super Ljava/lang/Object;
.source "OnLongClickNoteListener.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$OnPasswordEnterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option;->askPassword(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option;

.field final synthetic val$callback:Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Callback;

.field final synthetic val$d:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$note:Lchan/android/app/pocketnote/app/Note;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$8;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4c553fce9f412c82L    # 5.335347296504644E59

    const-string v2, "chan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$8"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$8;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option;Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Callback;Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$8;->$jacocoInit()[Z

    move-result-object v0

    .line 203
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$8;->this$0:Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option;

    iput-object p2, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$8;->val$d:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    iput-object p3, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$8;->val$callback:Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Callback;

    iput-object p4, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$8;->val$fragment:Landroid/support/v4/app/Fragment;

    iput-object p5, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$8;->val$note:Lchan/android/app/pocketnote/app/Note;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onEnter(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$8;->$jacocoInit()[Z

    move-result-object v0

    .line 206
    invoke-static {p1}, Lchan/android/app/pocketnote/app/AppPreferences;->hasCorrectPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    aput-boolean v4, v0, v4

    .line 207
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$8;->val$d:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->dismiss()V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 208
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$8;->val$callback:Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Callback;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$8;->val$fragment:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$8;->val$note:Lchan/android/app/pocketnote/app/Note;

    invoke-interface {v1, v2, v3}, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Callback;->doWork(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 212
    :goto_0
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$8;->val$d:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    const-string v2, "Password is incorrect!"

    invoke-virtual {v1, v2}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->showErrorMessage(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
