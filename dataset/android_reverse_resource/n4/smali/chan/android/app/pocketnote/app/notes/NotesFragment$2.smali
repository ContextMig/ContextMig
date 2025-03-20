.class Lchan/android/app/pocketnote/app/notes/NotesFragment$2;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/notes/NotesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/NotesFragment$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x67747c5eca41d481L

    const-string v2, "chan/android/app/pocketnote/app/notes/NotesFragment$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/NotesFragment$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/notes/NotesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 138
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$2;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 141
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$2;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$2;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-virtual {v3}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    const-class v4, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->startActivity(Landroid/content/Intent;)V

    .line 142
    aput-boolean v5, v0, v5

    return-void
.end method
