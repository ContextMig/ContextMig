.class Lorg/secuso/privacyfriendlytodolist/view/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$PinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->authAndGuiInit(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

.field final synthetic val$dialog:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

.field final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;Landroid/os/Bundle;Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$2;->val$savedInstanceState:Landroid/os/Bundle;

    iput-object p3, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$2;->val$dialog:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accepted()V
    .locals 2

    .line 316
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$2;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->initActivity(Landroid/os/Bundle;)V

    return-void
.end method

.method public declined()V
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->finishAffinity()V

    return-void
.end method

.method public resetApp()V
    .locals 3

    .line 326
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 327
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$200(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->deleteAll()V

    .line 328
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$200(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->createAll()V

    .line 329
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    const-class v2, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$2;->val$dialog:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->dismiss()V

    .line 331
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v1, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
