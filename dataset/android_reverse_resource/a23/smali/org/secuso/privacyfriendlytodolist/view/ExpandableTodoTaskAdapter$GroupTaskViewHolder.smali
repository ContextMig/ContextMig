.class public Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;
.super Ljava/lang/Object;
.source "ExpandableTodoTaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupTaskViewHolder"
.end annotation


# instance fields
.field public deadline:Landroid/widget/TextView;

.field public deadlineColorBar:Landroid/view/View;

.field public done:Landroid/widget/CheckBox;

.field public listName:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;

.field public progressBar:Landroid/widget/ProgressBar;

.field public seperator:Landroid/view/View;

.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;


# direct methods
.method public constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
