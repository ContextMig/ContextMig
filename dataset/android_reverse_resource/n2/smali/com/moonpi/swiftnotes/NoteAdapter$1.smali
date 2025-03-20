.class Lcom/moonpi/swiftnotes/NoteAdapter$1;
.super Ljava/lang/Object;
.source "NoteAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moonpi/swiftnotes/NoteAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/moonpi/swiftnotes/NoteAdapter;

.field final synthetic val$finalFavoured:Ljava/lang/Boolean;

.field final synthetic val$position:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/NoteAdapter$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x715d6846d8e42b0bL    # -3.569070898775785E-238

    const-string v2, "com/moonpi/swiftnotes/NoteAdapter$1"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/NoteAdapter$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/moonpi/swiftnotes/NoteAdapter;Ljava/lang/Boolean;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/NoteAdapter$1;->$jacocoInit()[Z

    move-result-object v0

    .line 159
    iput-object p1, p0, Lcom/moonpi/swiftnotes/NoteAdapter$1;->this$0:Lcom/moonpi/swiftnotes/NoteAdapter;

    iput-object p2, p0, Lcom/moonpi/swiftnotes/NoteAdapter$1;->val$finalFavoured:Ljava/lang/Boolean;

    iput p3, p0, Lcom/moonpi/swiftnotes/NoteAdapter$1;->val$position:I

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
    const/4 v1, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/NoteAdapter$1;->$jacocoInit()[Z

    move-result-object v2

    .line 163
    iget-object v0, p0, Lcom/moonpi/swiftnotes/NoteAdapter$1;->this$0:Lcom/moonpi/swiftnotes/NoteAdapter;

    invoke-static {v0}, Lcom/moonpi/swiftnotes/NoteAdapter;->access$000(Lcom/moonpi/swiftnotes/NoteAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/moonpi/swiftnotes/NoteAdapter$1;->val$finalFavoured:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    aput-boolean v1, v2, v1

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/moonpi/swiftnotes/NoteAdapter$1;->val$position:I

    invoke-static {v3, v0, v4}, Lcom/moonpi/swiftnotes/MainActivity;->setFavourite(Landroid/content/Context;ZI)V

    .line 164
    const/4 v0, 0x3

    aput-boolean v1, v2, v0

    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x2

    aput-boolean v1, v2, v4

    goto :goto_0
.end method
