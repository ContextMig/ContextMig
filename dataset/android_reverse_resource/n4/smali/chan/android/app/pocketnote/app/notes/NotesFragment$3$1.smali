.class Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$PickOptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2dfd2f4d06c2d7d5L    # 3.6677314348961123E-87

    const-string v2, "chan/android/app/pocketnote/app/notes/NotesFragment$3$1"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/notes/NotesFragment$3;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->$jacocoInit()[Z

    move-result-object v0

    .line 173
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPick(Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->$jacocoInit()[Z

    move-result-object v0

    .line 176
    const-string v1, "As list view"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aput-boolean v6, v0, v6

    .line 177
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v1, v1, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$102(Lchan/android/app/pocketnote/app/notes/NotesFragment;I)I

    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    .line 178
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v1, v1, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$200(Lchan/android/app/pocketnote/app/notes/NotesFragment;)Landroid/widget/ViewFlipper;

    move-result-object v1

    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$100(Lchan/android/app/pocketnote/app/notes/NotesFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    .line 189
    :goto_0
    const/16 v1, 0xe

    aput-boolean v6, v0, v1

    return-void

    .line 179
    :cond_0
    const-string v1, "As grid view"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    .line 180
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v1, v1, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-static {v1, v6}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$102(Lchan/android/app/pocketnote/app/notes/NotesFragment;I)I

    const/4 v1, 0x5

    aput-boolean v6, v0, v1

    .line 181
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v1, v1, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$200(Lchan/android/app/pocketnote/app/notes/NotesFragment;)Landroid/widget/ViewFlipper;

    move-result-object v1

    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$100(Lchan/android/app/pocketnote/app/notes/NotesFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    const/4 v1, 0x6

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 182
    :cond_1
    const-string v1, "By modified time"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    aput-boolean v6, v0, v1

    .line 183
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v1, v1, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$300(Lchan/android/app/pocketnote/app/notes/NotesFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v3, v3, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-static {v3}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$400(Lchan/android/app/pocketnote/app/notes/NotesFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "modified_time"

    iget-object v5, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v5, v5, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-static {v5}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$100(Lchan/android/app/pocketnote/app/notes/NotesFragment;)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$500(Lchan/android/app/pocketnote/app/notes/NotesFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x8

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 184
    :cond_2
    const-string v1, "By alphabet"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    aput-boolean v6, v0, v1

    .line 185
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v1, v1, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$300(Lchan/android/app/pocketnote/app/notes/NotesFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v3, v3, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-static {v3}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$400(Lchan/android/app/pocketnote/app/notes/NotesFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "title"

    iget-object v5, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v5, v5, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-static {v5}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$100(Lchan/android/app/pocketnote/app/notes/NotesFragment;)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$500(Lchan/android/app/pocketnote/app/notes/NotesFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0xa

    aput-boolean v6, v0, v1

    goto/16 :goto_0

    .line 186
    :cond_3
    const-string v1, "By color"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0xb

    aput-boolean v6, v0, v1

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xc

    aput-boolean v6, v0, v1

    .line 187
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v1, v1, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$300(Lchan/android/app/pocketnote/app/notes/NotesFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v3, v3, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-static {v3}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$400(Lchan/android/app/pocketnote/app/notes/NotesFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "color"

    iget-object v5, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;->this$1:Lchan/android/app/pocketnote/app/notes/NotesFragment$3;

    iget-object v5, v5, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-static {v5}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$100(Lchan/android/app/pocketnote/app/notes/NotesFragment;)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$500(Lchan/android/app/pocketnote/app/notes/NotesFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0xd

    aput-boolean v6, v0, v1

    goto/16 :goto_0
.end method
