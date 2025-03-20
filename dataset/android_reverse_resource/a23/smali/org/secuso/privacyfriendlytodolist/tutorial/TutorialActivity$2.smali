.class Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$2;
.super Ljava/lang/Object;
.source "TutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$2;->this$0:Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$2;->this$0:Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->access$100(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;I)I

    move-result p1

    .line 113
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$2;->this$0:Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->access$200(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)[I

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$2;->this$0:Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->access$300(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$2;->this$0:Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->access$000(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)V

    :goto_0
    return-void
.end method
