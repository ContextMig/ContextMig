.class Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SubTaskViewHolder;
.super Ljava/lang/Object;
.source "ExpandableTodoTaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubTaskViewHolder"
.end annotation


# instance fields
.field public deadlineColorBar:Landroid/view/View;

.field public done:Landroid/widget/CheckBox;

.field public subtaskName:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;


# direct methods
.method private constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SubTaskViewHolder;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$1;)V
    .locals 0

    .line 659
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SubTaskViewHolder;-><init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)V

    return-void
.end method
