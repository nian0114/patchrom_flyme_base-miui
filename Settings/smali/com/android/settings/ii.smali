.class Lcom/android/settings_ex/ii;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/settings_ex/ii;->Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 672
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 673
    return-void
.end method
