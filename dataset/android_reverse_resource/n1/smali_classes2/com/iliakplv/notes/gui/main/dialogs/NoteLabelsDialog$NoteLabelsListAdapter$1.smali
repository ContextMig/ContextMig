.class Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$1;
.super Ljava/lang/Object;
.source "NoteLabelsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;

.field final synthetic val$position:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x70c8f368ed778530L    # 1.9833138782964258E235

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$1;->$jacocoInit()[Z

    move-result-object v0

    .line 124
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;

    iput p2, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$1;->$jacocoInit()[Z

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;

    iget-object v1, v1, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;

    invoke-static {v1}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->access$100(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;)[Z

    move-result-object v1

    iget v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$1;->val$position:I

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 128
    aput-boolean v4, v0, v4

    return-void
.end method
