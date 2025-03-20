.class Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$3;
.super Ljava/lang/Object;
.source "TutorialActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;
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

    .line 132
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;

    invoke-static {v0, p1}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->access$400(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;I)V

    .line 142
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->access$200(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 144
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->access$500(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f0e0091

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 145
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->access$600(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)Landroid/widget/Button;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->access$500(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f0e0084

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 149
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;->access$600(Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
