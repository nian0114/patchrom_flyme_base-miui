.class Lcom/android/settings_ex/gc;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic vI:Lcom/android/settings_ex/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OwnerInfoSettings;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings_ex/gc;->vI:Lcom/android/settings_ex/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/gc;->vI:Lcom/android/settings_ex/OwnerInfoSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/OwnerInfoSettings;->a(Lcom/android/settings_ex/OwnerInfoSettings;Z)Z

    .line 125
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method
