.class Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;
.super Ljava/lang/Object;
.source "SwitchPreferenceCompat.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/SwitchPreferenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/SwitchPreferenceCompat;


# direct methods
.method private constructor <init>(Landroid/support/v7/preference/SwitchPreferenceCompat;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;->this$0:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/preference/SwitchPreferenceCompat;Landroid/support/v7/preference/SwitchPreferenceCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/preference/SwitchPreferenceCompat;
    .param p2, "x1"    # Landroid/support/v7/preference/SwitchPreferenceCompat$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;-><init>(Landroid/support/v7/preference/SwitchPreferenceCompat;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;->this$0:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 58
    :goto_1
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;->this$0:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    goto :goto_1
.end method
