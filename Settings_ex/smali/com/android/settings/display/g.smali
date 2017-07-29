.class Lcom/android/settings_ex/display/g;
.super Ljava/lang/Object;
.source "FluencyModeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Yk:Lcom/android/settings_ex/display/FluencyModeListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/display/FluencyModeListPreference;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings_ex/display/g;->Yk:Lcom/android/settings_ex/display/FluencyModeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/display/g;->Yk:Lcom/android/settings_ex/display/FluencyModeListPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/display/FluencyModeListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/display/g;->Yk:Lcom/android/settings_ex/display/FluencyModeListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/display/g;->Yk:Lcom/android/settings_ex/display/FluencyModeListPreference;

    invoke-static {v1}, Lcom/android/settings_ex/display/FluencyModeListPreference;->b(Lcom/android/settings_ex/display/FluencyModeListPreference;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/display/FluencyModeListPreference;->a(Lcom/android/settings_ex/display/FluencyModeListPreference;I)I

    .line 147
    return-void
.end method
