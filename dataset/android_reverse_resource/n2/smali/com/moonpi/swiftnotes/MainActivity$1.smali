.class Lcom/moonpi/swiftnotes/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moonpi/swiftnotes/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    sget-object v0, Lcom/moonpi/swiftnotes/MainActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x26ef6b0eb04eca65L

    const-string v2, "com/moonpi/swiftnotes/MainActivity$1"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/MainActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/moonpi/swiftnotes/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 139
    iput-object p1, p0, Lcom/moonpi/swiftnotes/MainActivity$1;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 163
    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity$1;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-static {v1}, Lcom/moonpi/swiftnotes/MainActivity;->access$000(Lcom/moonpi/swiftnotes/MainActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    aput-boolean v3, v0, v3

    .line 147
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity$1;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-static {v2}, Lcom/moonpi/swiftnotes/MainActivity;->access$000(Lcom/moonpi/swiftnotes/MainActivity;)I

    move-result v2

    if-le v1, v2, :cond_1

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 148
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity$1;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/moonpi/swiftnotes/MainActivity;->newNoteButtonVisibility(Z)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 158
    :goto_1
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity$1;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/moonpi/swiftnotes/MainActivity;->access$002(Lcom/moonpi/swiftnotes/MainActivity;I)I

    .line 159
    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    return-void

    .line 143
    :cond_0
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 144
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity$1;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/moonpi/swiftnotes/MainActivity;->access$002(Lcom/moonpi/swiftnotes/MainActivity;I)I

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity$1;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-static {v2}, Lcom/moonpi/swiftnotes/MainActivity;->access$000(Lcom/moonpi/swiftnotes/MainActivity;)I

    move-result v2

    if-lt v1, v2, :cond_2

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    goto :goto_1

    :cond_2
    sget-boolean v1, Lcom/moonpi/swiftnotes/MainActivity;->deleteActive:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_1

    :cond_3
    sget-boolean v1, Lcom/moonpi/swiftnotes/MainActivity;->searchActive:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    goto :goto_1

    :cond_4
    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 154
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity$1;->this$0:Lcom/moonpi/swiftnotes/MainActivity;

    invoke-virtual {v1, v3}, Lcom/moonpi/swiftnotes/MainActivity;->newNoteButtonVisibility(Z)V

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    goto :goto_1
.end method
