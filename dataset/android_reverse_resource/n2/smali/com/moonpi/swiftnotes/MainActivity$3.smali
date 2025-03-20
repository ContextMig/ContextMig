.class Lcom/moonpi/swiftnotes/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moonpi/swiftnotes/MainActivity;->initToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/moonpi/swiftnotes/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/MainActivity$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x717cad96b413c1a7L    # 4.668600016935205E238

    const-string v2, "com/moonpi/swiftnotes/MainActivity$3"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/MainActivity$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/moonpi/swiftnotes/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 219
    iput-object p1, p0, Lcom/moonpi/swiftnotes/MainActivity$3;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity$3;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-virtual {v1}, Lcom/moonpi/swiftnotes/MainActivity;->searchEnded()V

    .line 241
    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    return v2
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$3;->$jacocoInit()[Z

    move-result-object v1

    .line 223
    sput-boolean v4, Lcom/moonpi/swiftnotes/MainActivity;->searchActive:Z

    aput-boolean v4, v1, v4

    .line 224
    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity$3;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-virtual {v2, v0}, Lcom/moonpi/swiftnotes/MainActivity;->newNoteButtonVisibility(Z)V

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    .line 226
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$100()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setLongClickable(Z)V

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 229
    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity$3;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/moonpi/swiftnotes/MainActivity;->access$202(Lcom/moonpi/swiftnotes/MainActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    .line 230
    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$300()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    .line 231
    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity$3;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-static {v2}, Lcom/moonpi/swiftnotes/MainActivity;->access$200(Lcom/moonpi/swiftnotes/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->access$400()Lcom/moonpi/swiftnotes/NoteAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/moonpi/swiftnotes/NoteAdapter;->notifyDataSetChanged()V

    .line 235
    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    return v4
.end method
